(local jecs (require :../Packages/jecs))
(local world (require :./world))
(local replecs (require :../Packages/replecs))

(let [ components { :Test (jecs.component)
                    :Test2 (jecs.component) } ]
  (each [name component (pairs components)]
    (world:set component jecs.Name name)
    (world:add component replecs.shared))
  components)
