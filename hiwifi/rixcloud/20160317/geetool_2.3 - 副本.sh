#!/bin/sh
skip=44

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -dt`
else
  gztmpdir=/tmp/gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `echo X | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  echo >&2 "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
�m��Vgeetool_2.3.sh �[�s�V�l�Z-S
3�b�Х��s��2��C;�VbMlɕ�<��LB1y���7	M	�-q�0$��?f}e�S��=WW��lɯ>��Y:��s���g���7�G�85�����lR�2�q\� h��
+�P<%g�ą��!6����?����f�����LH`،"J�ۊ�}VT�6x4�'h�i9!��>v�=������/��QB<)����ǘuq�4�XY`�`ח��_�hX�7�O>��&�w��+hr��yW�wI��R���?���^+�����Ƞ"��$#�'��Lq�P���%(��ϝ�d�k6x��y@~���u�[1���<Z�RZ�Q��'��ʄ2 ��̢*��V����hv�x<�g`2��&�b/s�a��O,s�te������,�]'�%)�������J��i&+ib��� &d�*��{��=δw�\����Qcc�t��XA��R�~jR�pr�E��Ɩc^؜T�����V%��ds����'���F�K������i����<2�O�^�)n�A܇�2�ߑQ/��Z�~Y�/��]�)�@���*������k`�-����-��f���V���m�����H���@F�h�ߙ���+\�?�"�Cr�Y�1��9c�j��e��tqw�b$������gR��B�^l0Ϋ��#J�@ h�>rn�Y{�@���"�#�����k��*���&W�o��������;�-v~�_c����0�7Q���Xȣ��ƴX�hz���mL�F�����ƴ'0�Ʀ�����"_�D����5�����3�T�?�h蜠�qq80~AB<
� r�cW��X�}�a�E�Y3l$����2	Ὡ����5߀�v�41��?��j
ML�ƀ�F�\i)_,�'��a�����ݛ�m�Uڞ�0`"��'���D�[F>��> �W�5��f.���n��s���t��8��l&#+Ο�_����斥sQ�EX�2��;Ƌ�d��C��ڍڙ]{]�]ĸv����F�=�Y�#vR���~g]{:7�ːg���;���J�BK���Eo$�trʋ��ؖ�%��J�%�/�cd~���l��$�,�E;#��T97�C��o�9&@&	�2��Ź�,��}���!!*nގ@T5��[�l\��	=a�+u�*ʖ��p����aB���^����{��
?`���]zq�9���41��X���R��=��3��J�d�f�o���}�=Kqs�^����i��A�WN��u[��YU�Rb%��En@9>���A��KR>t�pRKceW�jp83�B$g���'�Z%�P�Q+{K�E6Q��m�̀Ć���>}bBY��gq�'NKgȇA�:s�G�����3���J����=|��z���a�WrT�<��_�Z�.A�Q�f g�~�VG�cJ��g)�CG��q���D��ōT_#���7����ͫ��ZT�8�9�rIA�Kj�8�aߞ�vp}Gk0)���N/���k�Lw�<�#��>Q
��^�=&r�Tf����b�9��'?u�c�ബ�#�T���8��a��ʩ�pJ�]�4�o��w��|������)Zֳ�1сu��0��I�u��X#J�Np���&����=)�U�i��Z�+6��cKs󏗎^/i��
�ΌX̓IQ�r���DU��θ;8 H	Y���PG��� 'eS)&��[��zR|���|�[�+�Ǜ��MZo�fX	k�I�_�f�Q��3&[���?�����������Zs*��8]�=	�h���r����l��Č����|�"�	����� ]��b긜N��A�M�+��T�t���
�:|����g���3NK6�|i��J	�E�W^�vg3 ����Qc�3�Z�y��ޕ1�l�#�u??��|�O�I�J��a" �	�J*�n��Ֆ:��5��������Xb[r��n.Ѡ;)7��ꕚc�Ƃ��ە p�����X(�O��ZپY�ô:6?�-���ۋ� ]R��",���4��aQ1e��U�(�J{C_6�*+=&��Y��!:���C���9�{��]e��U�2p��[��;X����Tq��%��҆P�;�b�iW+�AO��ҽ��Jj<@Ԅ��&Uq�12J�F��o������0�qs/v*������2�[�ٱ�2ҁU�/g��$�d"�
C6�w'N�]�X�گ4�Ы��%�W����/�\*�X-n͜ꈼ�f'���&�ܖ���ߙ�k6�
�:9���(BZ3��Q,�FV�֪L�T�YZnG��f5k�a�=�����Y�������ř��[3@"��M�U�G�'�Q>�4�r35h��Q�k��O����6Ҹ�ԆW�jB4�H��G�����M�{6TZ�j�"�6^aFW.N�L��Z�9Īw�V�-͂�[��Ta���+ O���0�xsX `���?�*Z*r�K�M�Wթ�2QU1�W%UO�[,|*�0�X��Ll��꘶U��O�!��S�CWWB��l�;q�)���Fr(�C���g)>-�e�K�844�i�U����*��U�[j<�N�A�C��>�O\?D�zJo4A��4�K#�|���u��$}�/�}��Gg>�"S��WT�A�z�V�4
w��B��vi{�]�y�&h�u���ve9��T���&���qM��d��Hn�{�F�t�[�5��<nU�m7�9nR�t?Ν 9���7�D}c�7�>�r�Y5���x;;���;��D��!��dS����:X/������[@���s��O��O�m�=��h�4��ym�W��n�Ȝh�X�`-AݳI�����@3��E�5r�9�����<z��<6���[g����,�=$�@����u��S}
�����WH/�,	o��K�o���=}���l�d�5�,'�H�,k5�s�#��Wk��1�NQ�)�c�Jkh/+=�����vFH3v��vxl#~��h~�'�,#���Ir��{x��a��n����U��,e��xSL�v�o�5��ͳ�*��������MG�s��c�Q���y��}&��8w��AY�_��"�ꃦ�C���hi�PMs܂C�O��C�F�����9	����h�f{gX��g�k�Ў�F�#���u���bz���_p	Ҡ��Hk�ޅ_�a��u�o<��dpzM5��c� ���kIY��Qȕ�6P���{��twm=��@�Yq�Oo���n�а�N�����|с���v��#��X�t���{$X"S aHԘ&4C���撚U@�ӧ~-m�'_e3�~ud�� d�M�7  