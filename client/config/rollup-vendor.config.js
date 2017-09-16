//------------------------------------------------------------------------------
// Import all packages
//------------------------------------------------------------------------------
import rollup from 'rollup'
import nodeResolve from 'rollup-plugin-node-resolve'
import uglify from 'rollup-plugin-uglify'
import commonjs from 'rollup-plugin-commonjs';
import babel from 'rollup-plugin-babel';


//------------------------------------------------------------------------------
// Rollup module exports
//------------------------------------------------------------------------------
export default {
    entry: 'public/vendor.bundle.js',
    dest: 'public/vendor.bundle.js', // output a single application bundle
    sourceMap: false,
    treeshake: true,
    moduleName: 'vendor',
    format: 'iife',
    onwarn: function(warning) {
        // skip certain warnings
        if (warning.code === 'THIS_IS_UNDEFINED') { return; }
        if (warning.indexOf("The 'this' keyword is equivalent to 'undefined'") > -1) { return; }
        console.warn(warning.message);
    },


    //------------------------------------------------------------------------------
    // Plugins
    //------------------------------------------------------------------------------
    plugins: [
        babel({
            exclude: 'node_modules/**',
        }),
        nodeResolve({ jsnext: true, module: true }),
        commonjs({
            include: 'node_modules/rxjs/**',
        }),
        uglify()
    ]
}