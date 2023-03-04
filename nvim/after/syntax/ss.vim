highlight Keywords guifg=#bb9af7
syntax match Keywords /\v(- )@<=<(template|namespace|var|block|yield|async|return|interface|placeholder|if|else|unless|while|do|forEach|forIn|for|include|attr)>/
syntax match Keywords /\v(\) )@<=(extends)/
syntax match Keywords /\v(: |- var )@<=(putIn)/

highlight DynamicUnitName guifg=#f7768e
syntax match DynamicUnitName /\v(self|this)/
syntax match DynamicUnitName /\v(- )@<=(super)/

highlight UnitName guifg=#7aa2f7
syntax match UnitName /\v[a-zA-Z]+(\()@=/
syntax match UnitName /\v(extends \@)@<=[a-zA-Z]+/

highlight String guifg=#9ece6a
syntax match String /\v(['"`])[^'"`]*\1/

highlight Primitive guifg=#ff9e64
syntax match Primitive /\v<(true|false|\d+)>/

highlight Operator guifg=#89ddff
syntax match Operator /\v[+,=:;.*/%|\-]/

highlight Comment guifg=#565f89
syntax match Comment /\v\/\/\/.*/
syntax match Comment /\v\/\*(.*\n)+.*\*\//

highlight JSGlobalObjects guifg=#2ac3de
syntax match JSGlobalObjects /\v(String|Number|BigInt|Boolean|Symbol|Array|Object|Function)(\.|\()@=/
