(use '[clojure.string :only (split)])
(defn expt [a b]
  (if (< b 0)
    (/ 1.0 (expt a (- 0 b)))
    (reduce * (repeat b a))))

(defn getInput [] (line-seq (java.io.BufferedReader. *in*)))

(defn process [beads] 
  (let [beadOpts (map #(expt % (- % 1)) beads)]
    (mod (* (reduce * beadOpts) (expt (reduce + beads) (- (count beads) 2))) 1000000007)))

(defn convertLine [line]
  (map #(Integer/parseInt %) (split line #" ")))

(defn output [ans]
  (if (integer? ans)
    (println ans)
    (println (format "%.0f" ans))))

(dorun (map output (map process (map convertLine (take-nth 2 (drop 2 (getInput)))))))
