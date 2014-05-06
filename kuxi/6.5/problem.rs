use std::io;

enum InputState {
    Coins,
    ItemCount,
    Items
}

#[deriving(Show)]
struct Item {
    index: uint,
    price: int
}

struct TestCase {
    coins: int,
    items: Vec<Item>
}

fn getInput() -> Vec<TestCase> {
    let mut cases = Vec::new();
    let mut inputState = Coins;
    let mut case = TestCase {
        coins: 0,
        items: Vec::new()
    };
    let mut items:Vec<int> = Vec::new();
    for wrappedLine in io::stdin().lines().skip(1) {
        let unwrappedLine = wrappedLine.unwrap();
        let line = unwrappedLine.trim();
        match inputState {
            Coins => case.coins = from_str::<int>(line).unwrap(),
            Items => items = line.split(' ').map(|s| from_str::<int>(s).unwrap()).collect(),
            _ => ()
        };
        inputState = match inputState {
            Coins => ItemCount,
            ItemCount => Items,
            Items => {
                case.items = items.iter().enumerate().map(|(i, v):(uint,&int)| Item{
                    index: i,
                    price: *v
                }).collect();
                case.items.sort_by(|a, b| b.price.cmp(&a.price));
                cases.push(case);
                case = TestCase {
                    coins: 0,
                    items: Vec::new()
                };
                Coins
            }
        }
    }
    cases
}

fn printCase(case: &TestCase) {
    println!("coins: {}", case.coins)
    println!("items: {}", case.items)
}

fn solve(case: &TestCase) -> (uint, uint) {
    for item in case.items.iter().filter(|x| x.price < case.coins) {
        match case.items.iter().find(|x| x.index != item.index && x.price + item.price == case.coins) {
            Some(item2) => {
                return (item.index + 1, item2.index + 1)
            },
            None => ()
        }
    }
    /*
    for i in range(0, case.items.len()) {
        for j in range(i + 1, case.items.len()) {
            match (*case.items.get(i), *case.items.get(j)) {
                ((i1, large), (i2, small)) if large + small == case.coins => {
                    return (i1 + 1, i2 + 1)
                },
                ((_, large), _) if large >= case.coins => {
                    break;
                },
                ((_, large), (_, small)) if small < case.coins - large => {
                    break;
                },
                _ => ()
            }
        }
    }
    */
    (-1, -1)
}

fn main() {
    let cases = getInput();
    let mut case = 1;
    for testCase in cases.iter() {
        let (f, s) = match solve(testCase) {
            (a, b) if b < a => (b, a),
            t => t
        };
        println!("Case \\#{}: {} {}", case, f, s);
        case = case + 1;
    }
}
