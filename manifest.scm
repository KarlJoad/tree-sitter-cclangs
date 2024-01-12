(use-modules (guix)
             (guix packages)
             (gnu packages)
             (gnu packages commencement)
             (gnu packages tree-sitter)
             (gnu packages gcc))

(packages->manifest
 (list gcc-toolchain
       tree-sitter
       tree-sitter-cli
       ;; This gives us libstdc++ & libgcc_s
       ;; Those should be in gcc-toolchain, in my opinion
       (list gcc "lib")))
