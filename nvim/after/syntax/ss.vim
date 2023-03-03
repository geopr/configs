highlight Keywords guifg=#bb9af7
syntax match Keywords /\v(- )@<=(template|namespace|var|block|yield|async|return|interface|placeholder)/
syntax match Keywords /\v(extends)/

highlight UnitName guifg=#7aa2f7
syntax match UnitName /\v[a-zA-z]+(\(.*\))@=/
syntax match UnitName /\v(extends \@)@<=[a-zA-z]+/

highlight DynamicUnitName guifg=#f7768e
syntax match DynamicUnitName /\v(self|this)/
syntax match DynamicUnitName /\v(- )@<=(super)/
