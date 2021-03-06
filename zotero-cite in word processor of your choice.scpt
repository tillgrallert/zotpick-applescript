FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � � This script allows to cite references from Zotero in various text editors. It relies on Better BibTeX for formatting the output      � 	 	   T h i s   s c r i p t   a l l o w s   t o   c i t e   r e f e r e n c e s   f r o m   Z o t e r o   i n   v a r i o u s   t e x t   e d i t o r s .   I t   r e l i e s   o n   B e t t e r   B i b T e X   f o r   f o r m a t t i n g   t h e   o u t p u t     
  
 l      ��  ��    � � It supports a number of output formats:
	- Pandoc: to use with Pandoc and citeproc, formatted as [@Citation Key]
	- Multimarkdon:
	- Scannable Cite:
	     �  .   I t   s u p p o r t s   a   n u m b e r   o f   o u t p u t   f o r m a t s : 
 	 -   P a n d o c :   t o   u s e   w i t h   P a n d o c   a n d   c i t e p r o c ,   f o r m a t t e d   a s   [ @ C i t a t i o n   K e y ] 
 	 -   M u l t i m a r k d o n : 
 	 -   S c a n n a b l e   C i t e : 
 	      l      ��  ��    Y S The reference is copied to the clipboard and pasted into the selected text editor      �   �   T h e   r e f e r e n c e   i s   c o p i e d   t o   t h e   c l i p b o a r d   a n d   p a s t e d   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r        l     ��������  ��  ��        l      ��  ��    G A To do: 
	- try to cite the reference already selected in Zotero
     �   �   T o   d o :   
 	 -   t r y   t o   c i t e   t h e   r e f e r e n c e   a l r e a d y   s e l e c t e d   i n   Z o t e r o 
      l     ��������  ��  ��        l     ��   ��    R L activeEditorsList will be populated in the course of the script's execution      � ! ! �   a c t i v e E d i t o r s L i s t   w i l l   b e   p o p u l a t e d   i n   t h e   c o u r s e   o f   t h e   s c r i p t ' s   e x e c u t i o n   " # " l     $���� $ r      % & % J     ����   & o      ���� &0 activeeditorslist activeEditorsList��  ��   #  ' ( ' l     �� ) *��   ) v p set a list of text editors whose running status is to be checked. The order can be set to one's own preferences    * � + + �   s e t   a   l i s t   o f   t e x t   e d i t o r s   w h o s e   r u n n i n g   s t a t u s   i s   t o   b e   c h e c k e d .   T h e   o r d e r   c a n   b e   s e t   t o   o n e ' s   o w n   p r e f e r e n c e s (  , - , l    .���� . r     / 0 / J     1 1  2 3 2 m     4 4 � 5 5  S c r i v e n e r 3  6 7 6 m     8 8 � 9 9  S u b l i m e   T e x t 7  : ; : m     < < � = =  M i c r o s o f t   W o r d ;  > ? > m    	 @ @ � A A  T e x t E d i t ?  B�� B m   	 
 C C � D D 
 n v A L T��   0 o      ���� 0 editorslist editorsList��  ��   -  E F E l     �� G H��   G #  set a list of output formats    H � I I :   s e t   a   l i s t   o f   o u t p u t   f o r m a t s F  J K J l    L���� L r     M N M J     O O  P Q P m     R R � S S  P a n d o c Q  T U T m     V V � W W  M M D U  X�� X m     Y Y � Z Z  S c a n n a b l e   c i t e��   N o      ���� 0 formatslist formatsList��  ��   K  [ \ [ l     ��������  ��  ��   \  ] ^ ] l     �� _ `��   _    test if Zotero is running    ` � a a 4   t e s t   i f   Z o t e r o   i s   r u n n i n g ^  b c b l    d���� d r     e f e I   �� g��
�� .sysoexecTEXT���     TEXT g m     h h � i i � / u s r / b i n / c u r l   ' h t t p : / / l o c a l h o s t : 2 3 1 1 9 / b e t t e r - b i b t e x / c a y w ? p r o b e = p r o b e '   2 > / d e v / n u l l ;   e x i t   0��   f o      ���� 0 
zotrunning 
zotRunning��  ��   c  j k j l   � l���� l Z    � m n o�� m =   " p q p o     ���� 0 
zotrunning 
zotRunning q m     ! r r � s s   n k   % Q t t  u v u I  % 2�� w x
�� .sysodisAaleR        TEXT w m   % ( y y � z z $ Z o t e r o   n o t   r u n n i n g x �� {��
�� 
mesS { m   + . | | � } } � T h i s   s c r i p t   w i l l   n o t   w o r k   u n l e s s   Z o t e r o   i s   r u n n i n g .   P l e a s e   l a u n c h   Z o t e r o   a n d   t r y   a g a i n��   v  ~  ~ O   3 D � � � I  > C������
�� .miscactvnull��� ��� null��  ��   � 4   3 ;�� �
�� 
capp � o   7 :���� 0 appname appName   � � � R   E O���� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � m   I L��������   �  ��� � l  P P�� � ���   � ) # test if Better BibTeX is instelled    � � � � F   t e s t   i f   B e t t e r   B i b T e X   i s   i n s t e l l e d��   o  � � � =  T Y � � � o   T U���� 0 
zotrunning 
zotRunning � m   U X � � � � � " N o   e n d p o i n t   f o u n d �  ��� � k   \ � � �  � � � I  \ i�� � �
�� .sysodisAaleR        TEXT � m   \ _ � � � � � 6 B e t t e r   B i b T e X   n o t   i n s t a l l e d � �� ���
�� 
mesS � m   b e � � � � � T h i s   s c r i p t   w i l l   n o t   w o r k   u n l e s s   B e t t e r   B i b T e X   i s   i n s t a l l e d .   P l e a s e   m a k e   s u r e   t h a t   B e t t e r   B i b T e X   i s   i n s t a l l e d   i n   t h e   r u n n i n g   i n s t a n c e   o f   Z o t e r o��   �  � � � O   j { � � � I  u z������
�� .miscactvnull��� ��� null��  ��   � 4   j r�� �
�� 
capp � o   n q���� 0 appname appName �  ��� � R   | ����� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � m   � ���������  ��  ��  ��  ��  ��   k  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � $     variable with running apps    � � � � <         v a r i a b l e   w i t h   r u n n i n g   a p p s �  � � � l  � � ����� � O   � � � � � r   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
pnam � 2   � ���
�� 
prcs��  ��   � o      ���� "0 activeprocesses activeProcesses � m   � � � ��                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ' ! variable with front most process    � � � � B   v a r i a b l e   w i t h   f r o n t   m o s t   p r o c e s s �  � � � l  � � ����� � O   � � � � � r   � � � � � c   � � � � � l  � � ����� � 6  � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
pnam � 2   � ���
�� 
prcs��  ��   � =  � � � � � 1   � ���
�� 
pisf � m   � ���
�� boovtrue��  ��   � m   � ���
�� 
TEXT � o      ���� 0 frontapp frontApp � m   � � � ��                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 8 2    variable with list of running text editors        � � � � d         v a r i a b l e   w i t h   l i s t   o f   r u n n i n g   t e x t   e d i t o r s         �  � � � l  � � ����� � X   � � ��� � � Z   � � � ����� � E  � � � � � o   � ����� "0 activeprocesses activeProcesses � o   � ����� 0 appname appName � k   � � � �  � � � r   � � � � � o   � ����� 0 appname appName � o      ���� 0 activeeditor activeEditor �  ��� � r   � � � � � o   � ����� 0 appname appName � n       � � �  ;   � � � o   � ����� &0 activeeditorslist activeEditorsList��  ��  ��  �� 0 appname appName � o   � ����� 0 editorslist editorsList��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � � � ask user to select from running text editors if they front most app is not part of a list of text editors and if there are more then one. Otherwiese continue with the sole running text editor or abort the script    � � � ��   a s k   u s e r   t o   s e l e c t   f r o m   r u n n i n g   t e x t   e d i t o r s   i f   t h e y   f r o n t   m o s t   a p p   i s   n o t   p a r t   o f   a   l i s t   o f   t e x t   e d i t o r s   a n d   i f   t h e r e   a r e   m o r e   t h e n   o n e .   O t h e r w i e s e   c o n t i n u e   w i t h   t h e   s o l e   r u n n i n g   t e x t   e d i t o r   o r   a b o r t   t h e   s c r i p t �  � � � l  � � ����� � r   � � � � � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � o   � ����� &0 activeeditorslist activeEditorsList��  ��  ��   � o      ���� 0 editorcount editorCount��  ��   �  � � � l     �� � ���   � ) # the frontmost app is a text editor    � � � � F   t h e   f r o n t m o s t   a p p   i s   a   t e x t   e d i t o r �  � � � l  � ���� � Z   � �  � E   o   �~�~ 0 editorslist editorsList o  �}�} 0 frontapp frontApp  k    r  	 o  �|�| 0 frontapp frontApp	 o      �{�{ 0 	targetapp 	targetApp 
�z
 l �y�y   , & there is only one text editor running    � L   t h e r e   i s   o n l y   o n e   t e x t   e d i t o r   r u n n i n g�z    =   o  �x�x 0 editorcount editorCount m  �w�w   k  ,  r  * c  & l "�v�u n  " 4  "�t
�t 
cobj m   !�s�s  o  �r�r &0 activeeditorslist activeEditorsList�v  �u   m  "%�q
�q 
ctxt o      �p�p 0 	targetapp 	targetApp �o l ++�n !�n    . ( there are multiple running text editors   ! �"" P   t h e r e   a r e   m u l t i p l e   r u n n i n g   t e x t   e d i t o r s�o   #$# ?  /4%&% o  /2�m�m 0 editorcount editorCount& m  23�l�l  $ '�k' r  7_()( c  7[*+* l 7W,�j�i, I 7W�h-.
�h .gtqpchltns    @   @ ns  - o  78�g�g &0 activeeditorslist activeEditorsList. �f/0
�f 
appr/ m  ;>11 �22 ( R u n n i n g   t e x t   e d i t o r s0 �e34
�e 
prmp3 m  AD55 �66 p P i c k   a   t e x t   e d i t o r   t o   s e n d   t h e   r e f e r e n c e ' s   C i t a t i o n I D   t o4 �d78
�d 
inSL7 l GM9�c�b9 n  GM:;: 4  HM�a<
�a 
cobj< m  KL�`�` ; o  GH�_�_ &0 activeeditorslist activeEditorsList�c  �b  8 �^=�]
�^ 
mlsl= m  PQ�\
�\ boovfals�]  �j  �i  + m  WZ�[
�[ 
ctxt) o      �Z�Z 0 	targetapp 	targetApp�k   k  b�>> ?@? l bb�YAB�Y  A   Handle 0 items   B �CC    H a n d l e   0   i t e m s@ DED l bb�XFG�X  F  
 set error   G �HH    s e t   e r r o rE IJI r  biKLK m  beMM �NN 
 E r r o rL o      �W�W 0 
alerttitle 
alertTitleJ OPO r  jqQRQ m  jmSS �TT B T h e r e   a r e   n o   r u n n i n g   t e x t   e d i t o r sR o      �V�V 0 alertmessage alertMessageP UVU l rr�UWX�U  W   display error message   X �YY ,   d i s p l a y   e r r o r   m e s s a g eV Z[Z I r�T\]
�T .sysodisAaleR        TEXT\ o  ru�S�S 0 
alerttitle 
alertTitle] �R^�Q
�R 
mesS^ o  x{�P�P 0 alertmessage alertMessage�Q  [ _�O_ r  ��`a` m  ��bb �cc 
 f a l s ea o      �N�N 0 	targetapp 	targetApp�O  ��  �   � ded l     �M�L�K�M  �L  �K  e fgf l     �Jhi�J  h * $ ask user to select an output format   i �jj H   a s k   u s e r   t o   s e l e c t   a n   o u t p u t   f o r m a tg klk l ��m�I�Hm r  ��non c  ��pqp l ��r�G�Fr I ���Est
�E .gtqpchltns    @   @ ns  s o  ���D�D 0 formatslist formatsListt �Cuv
�C 
appru m  ��ww �xx 0 A v a i l a b l e   o u t p u t   f o r m a t sv �Byz
�B 
prmpy m  ��{{ �|| T P i c k   a n   o u t p u t   f o r m a t   f o r   t h e   c i t a t i o n   t a gz �A}~
�A 
inSL} l ���@�? n  ����� 4  ���>�
�> 
cobj� m  ���=�= � o  ���<�< 0 formatslist formatsList�@  �?  ~ �;��:
�; 
mlsl� m  ���9
�9 boovfals�:  �G  �F  q m  ���8
�8 
ctxto o      �7�7 0 targetformat targetFormat�I  �H  l ��� l     �6�5�4�6  �5  �4  � ��� l     �3���3  �    test if Zotero is running   � ��� 4   t e s t   i f   Z o t e r o   i s   r u n n i n g� ��� l ����2�1� r  ����� I ���0��/
�0 .sysoexecTEXT���     TEXT� m  ���� ��� � / u s r / b i n / c u r l   ' h t t p : / / 1 2 7 . 0 . 0 . 1 : 2 3 1 1 9 / b e t t e r - b i b t e x / c a y w ? p r o b e = p r o b e '   2 > / d e v / n u l l ;   e x i t   0�/  � o      �.�. 0 
zotrunning 
zotRunning�2  �1  � ��� l     �-�,�+�-  �,  �+  � ��� l �<��*�)� Z  �<���(�'� = ����� o  ���&�& 0 
zotrunning 
zotRunning� m  ���� ��� 
 r e a d y� Z  �8����� = ����� o  ���%�% 0 targetformat targetFormat� m  ���� ���  P a n d o c� k  ���� ��� r  ����� I ���$��#
�$ .sysoexecTEXT���     TEXT� m  ���� ��� � / u s r / b i n / c u r l   ' h t t p : / / 1 2 7 . 0 . 0 . 1 : 2 3 1 1 9 / b e t t e r - b i b t e x / c a y w ? f o r m a t = p a n d o c '   2 > / d e v / n u l l ;   e x i t   0�#  � o      �"�" 0 thereference theReference� ��!� r  ����� b  ����� b  ����� m  ���� ���  [� o  ��� �  0 thereference theReference� m  ���� ���  ]� o      �� 0 thetag theTag�!  � ��� = ����� o  ���� 0 targetformat targetFormat� m  ���� ���  M M D� ��� k  ��� ��� r  � ��� I �����
� .sysoexecTEXT���     TEXT� m  ���� ��� � / u s r / b i n / c u r l   ' h t t p : / / l o c a l h o s t : 2 3 1 1 9 / b e t t e r - b i b t e x / c a y w ? f o r m a t = m m d '   2 > / d e v / n u l l ;   e x i t   0�  � o      �� 0 thereference theReference� ��� r  ��� o  �� 0 thereference theReference� o      �� 0 thetag theTag�  � ��� = ��� o  �� 0 targetformat targetFormat� m  �� ���  S c a n n a b l e   c i t e� ��� k  (�� ��� r   ��� I ���
� .sysoexecTEXT���     TEXT� m  �� ��� � / u s r / b i n / c u r l   ' h t t p : / / 1 2 7 . 0 . 0 . 1 : 2 3 1 1 9 / b e t t e r - b i b t e x / c a y w ? f o r m a t = s c a n n a b l e - c i t e '   2 > / d e v / n u l l ;   e x i t   0�  � o      �� 0 thereference theReference� ��� r  !(��� o  !$�� 0 thereference theReference� o      �� 0 thetag theTag�  �  � k  +8�� ��� l ++����  �   display error message   � ��� ,   d i s p l a y   e r r o r   m e s s a g e� ��� I +8���
� .sysodisAaleR        TEXT� m  +.�� ��� * U n k n o w n   o u t p u t   f o r m a t� ���
� 
mesS� m  14�� ��� p B e t t e r   B i b T e X   d o e s   n o t   r e t u r n   t h e   s e l e c t e d   t a r g e t   f o r m a t�  �  �(  �'  �*  �)  � ��� l     �
�	��
  �	  �  � ��� l     ����  � , & copy the citatin tag to the clipboard   � ��� L   c o p y   t h e   c i t a t i n   t a g   t o   t h e   c l i p b o a r d� ��� l =D���� I =D���
� .JonspClpnull���     ****� o  =@�� 0 thetag theTag�  �  as text   � ���  a s   t e x t� ��� l     ����  �  �  � ��� l     � ���   �  
 debugging   � �      d e b u g g i n g�  l     ����   %  display dialog (the clipboard)    � >   d i s p l a y   d i a l o g   ( t h e   c l i p b o a r d )  l     ��������  ��  ��   	 l     ��
��  
 H B paste the reference and page number into the selected text editor    � �   p a s t e   t h e   r e f e r e n c e   a n d   p a g e   n u m b e r   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r	 �� l Ey���� Z  Ey���� > EL o  EH���� 0 	targetapp 	targetApp m  HK � 
 f a l s e O  Ou k  Zt  I Z_������
�� .miscactvnull��� ��� null��  ��   �� O  `t I fs��
�� .prcskprsnull���     ctxt m  fi �    v ��!��
�� 
faal! m  lo��
�� eMdsKcmd��   m  `c""�                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  ��   4  OW��#
�� 
capp# o  SV���� 0 	targetapp 	targetApp��  ��  ��  ��  ��       ��$%��  $ ��
�� .aevtoappnull  �   � ****% ��&����'(��
�� .aevtoappnull  �   � ****& k    y))  "**  ,++  J,,  b--  j..  �//  �00  �11  �22  �33 k44 �55 �66 �77 ����  ��  ��  ' ���� 0 appname appName( O�� 4 8 < @ C���� R V Y�� h���� r y�� |������������ � � � �������8����������������������1��5��������M��S��bw{���������������������������� &0 activeeditorslist activeEditorsList�� �� 0 editorslist editorsList�� 0 formatslist formatsList
�� .sysoexecTEXT���     TEXT�� 0 
zotrunning 
zotRunning
�� 
mesS
�� .sysodisAaleR        TEXT
�� 
capp�� 0 appname appName
�� .miscactvnull��� ��� null
�� 
errn����
�� 
prcs
�� 
pnam�� "0 activeprocesses activeProcesses8  
�� 
pisf
�� 
TEXT�� 0 frontapp frontApp
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 activeeditor activeEditor�� 0 editorcount editorCount�� 0 	targetapp 	targetApp
�� 
ctxt
�� 
appr
�� 
prmp
�� 
inSL
�� 
mlsl�� 
�� .gtqpchltns    @   @ ns  �� 0 
alerttitle 
alertTitle�� 0 alertmessage alertMessage�� 0 targetformat targetFormat�� 0 thereference theReference�� 0 thetag theTag
�� .JonspClpnull���     ****
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���     ctxt��zjvE�O������vE�O���mvE�O�j E�O��  1a a a l O*a _ / *j UO)a a lhOPY 8�a   /a a a l O*a _ / *j UO)a a lhY hOa  *a -a ,E` UOa   *a -a ,a  [a !,\Ze81a "&E` #UO .�[a $a %l &kh  _ � �E` 'O��6FY h[OY��O�j &E` (O�_ # _ #E` )OPY u_ (k  �a %k/a *&E` )OPY Z_ (j -�a +a ,a -a .a /�a %k/a 0fa 1 2a *&E` )Y 'a 3E` 4Oa 5E` 6O_ 4a _ 6l Oa 7E` )O�a +a 8a -a 9a /�a %k/a 0fa 1 2a *&E` :Oa ;j E�O�a <  z_ :a =   a >j E` ?Oa @_ ?%a A%E` BY O_ :a C  a Dj E` ?O_ ?E` BY /_ :a E  a Fj E` ?O_ ?E` BY a Ga a Hl Y hO_ Bj IO_ )a J +*a _ )/ *j Oa  a Ka La Ml NUUY hascr  ��ޭ