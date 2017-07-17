<?php if (count($this->_tpl_vars['array'])>0){$divid_i=1;for($i=0;$i<count($this->_tpl_vars['array']); $i++){?>
                    <li <?php if($divid_i==2){ ?>class="fr"<?php $divid_i=0;}$divid_i++;?>><a href="<?php echo $this->_tpl_vars['array'][$i]['link'] ?>">
                        <img src="<?php echo $this->zoom($this->_tpl_vars['array'][$i]['pic'],400,350,'#fff',1) ?>">
                        <p class="te"><?php echo $this->_tpl_vars['array'][$i]['title'] ?></p>
                    </a></li>
                    <?php }} ?>