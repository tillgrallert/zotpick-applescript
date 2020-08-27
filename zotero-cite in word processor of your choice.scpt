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
 n v A L T��   0 o      ���� 0 editorslist editorsList��  ��   -  E F E l     �� G H��   G #  set a list of output formats    H � I I :   s e t   a   l i s t   o f   o u t p u t   f o r m a t s F  J K J l    L���� L r     M N M J     O O  P Q P m     R R � S S  P a n d o c Q  T U T m     V V � W W  M M D U  X�� X m     Y Y � Z Z  S c a n n a b l e   c i t e��   N o      ���� 0 formatslist formatsList��  ��   K  [ \ [ l     ��������  ��  ��   \  ] ^ ] l     �� _ `��   _ - '    Generate variable with running apps    ` � a a N         G e n e r a t e   v a r i a b l e   w i t h   r u n n i n g   a p p s ^  b c b l   # d���� d O    # e f e r    " g h g l     i���� i n      j k j 1     ��
�� 
pnam k 2    ��
�� 
prcs��  ��   h o      ���� "0 activeprocesses activeProcesses f m     l l�                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   c  m n m l     ��������  ��  ��   n  o p o l     �� q r��   q 3 -    Generate list of running text editors        r � s s Z         G e n e r a t e   l i s t   o f   r u n n i n g   t e x t   e d i t o r s         p  t u t l  $ Q v���� v X   $ Q w�� x w Z   8 L y z���� y E  8 ; { | { o   8 9���� "0 activeprocesses activeProcesses | o   9 :���� 0 appname appName z k   > H } }  ~  ~ r   > C � � � o   > ?���� 0 appname appName � o      ���� 0 activeeditor activeEditor   ��� � r   D H � � � o   D E���� 0 appname appName � n       � � �  ;   F G � o   E F���� &0 activeeditorslist activeEditorsList��  ��  ��  �� 0 appname appName x o   ' (���� 0 editorslist editorsList��  ��   u  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � � � ask user to select from running text editors if there are more then one. Otherwiese continue with the sole running text editor or abort the script    � � � �&   a s k   u s e r   t o   s e l e c t   f r o m   r u n n i n g   t e x t   e d i t o r s   i f   t h e r e   a r e   m o r e   t h e n   o n e .   O t h e r w i e s e   c o n t i n u e   w i t h   t h e   s o l e   r u n n i n g   t e x t   e d i t o r   o r   a b o r t   t h e   s c r i p t �  � � � l  R [ ����� � r   R [ � � � l  R W ����� � I  R W�� ���
�� .corecnte****       **** � o   R S���� &0 activeeditorslist activeEditorsList��  ��  ��   � o      ���� 0 editorcount editorCount��  ��   �  � � � l  \ � ����� � Z   \ � � � � � � =   \ a � � � o   \ _���� 0 editorcount editorCount � m   _ `����  � r   d r � � � c   d n � � � l  d j ����� � n   d j � � � 4   e j�� �
�� 
cobj � m   h i����  � o   d e���� &0 activeeditorslist activeEditorsList��  ��   � m   j m��
�� 
ctxt � o      ���� 0 	targetapp 	targetApp �  � � � ?   u z � � � o   u x���� 0 editorcount editorCount � m   x y����   �  ��� � r   } � � � � c   } � � � � l  } � ����� � I  } ��� � �
�� .gtqpchltns    @   @ ns   � o   } ~���� &0 activeeditorslist activeEditorsList � �� � �
�� 
appr � m   � � � � � � � ( R u n n i n g   t e x t   e d i t o r s � �� � �
�� 
prmp � m   � � � � � � � p P i c k   a   t e x t   e d i t o r   t o   s e n d   t h e   r e f e r e n c e ' s   C i t a t i o n I D   t o � �� � �
�� 
inSL � l  � � ����� � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� &0 activeeditorslist activeEditorsList��  ��   � �� ���
�� 
mlsl � m   � ���
�� boovfals��  ��  ��   � m   � ���
�� 
ctxt � o      ���� 0 	targetapp 	targetApp��   � k   � � � �  � � � l  � ��� � ���   �   Handle 0 items    � � � �    H a n d l e   0   i t e m s �  � � � l  � ��� � ���   �  
 set error    � � � �    s e t   e r r o r �  � � � r   � � � � � m   � � � � � � � 
 E r r o r � o      ���� 0 
alerttitle 
alertTitle �  � � � r   � � � � � m   � � � � � � � B T h e r e   a r e   n o   r u n n i n g   t e x t   e d i t o r s � o      ���� 0 alertmessage alertMessage �  � � � l  � ��� � ���   �   display error message    � � � � ,   d i s p l a y   e r r o r   m e s s a g e �  � � � I  � ��� � �
�� .sysodisAaleR        TEXT � o   � ����� 0 
alerttitle 
alertTitle � �� ���
�� 
mesS � o   � ����� 0 alertmessage alertMessage��   �  ��� � r   � � � � � m   � � � � � � � 
 f a l s e � o      ���� 0 	targetapp 	targetApp��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � * $ ask user to select an output format    � � � � H   a s k   u s e r   t o   s e l e c t   a n   o u t p u t   f o r m a t �  � � � l  � � ����� � r   � � � � � c   � � � � � l  � � ����� � I  � ��� � �
�� .gtqpchltns    @   @ ns   � o   � ����� 0 formatslist formatsList � �� � �
�� 
appr � m   � � � � � � � 0 A v a i l a b l e   o u t p u t   f o r m a t s � �� � �
�� 
prmp � m   � � � � � � � T P i c k   a n   o u t p u t   f o r m a t   f o r   t h e   c i t a t i o n   t a g � �� 
�� 
inSL  l  � ����� n   � � 4   � ���
�� 
cobj m   � �����  o   � ����� 0 formatslist formatsList��  ��   ���
�� 
mlsl m   � ��~
�~ boovfals�  ��  ��   � m   � ��}
�} 
ctxt � o      �|�| 0 targetformat targetFormat��  ��   �  l     �{�z�y�{  �z  �y   	
	 l     �x�w�v�x  �w  �v  
  l     �u�u   ' ! retrieve information from Zotero    � B   r e t r i e v e   i n f o r m a t i o n   f r o m   Z o t e r o  l  � � r   � � m   � � � 
 h e l l o o      �t�t 0 thetag theTag  
 debugging    �    d e b u g g i n g  l     �s�r�q�s  �r  �q    l     �p�p      test if Zotero is running    �   4   t e s t   i f   Z o t e r o   i s   r u n n i n g !"! l  �
#�o�n# r   �
$%$ I  ��m&�l
�m .sysoexecTEXT���     TEXT& m   �'' �(( � / u s r / b i n / c u r l   ' h t t p : / / 1 2 7 . 0 . 0 . 1 : 2 3 1 1 9 / b e t t e r - b i b t e x / c a y w ? p r o b e = p r o b e '   2 > / d e v / n u l l ;   e x i t   0�l  % o      �k�k 0 
zotrunning 
zotRunning�o  �n  " )*) l     �j�i�h�j  �i  �h  * +,+ l �-�g�f- Z  �./�e�d. = 010 o  �c�c 0 
zotrunning 
zotRunning1 m  22 �33 
 r e a d y/ Z  �45674 = 898 o  �b�b 0 targetformat targetFormat9 m  :: �;;  P a n d o c5 k  :<< =>= r  *?@? I &�aA�`
�a .sysoexecTEXT���     TEXTA m  "BB �CC � / u s r / b i n / c u r l   ' h t t p : / / 1 2 7 . 0 . 0 . 1 : 2 3 1 1 9 / b e t t e r - b i b t e x / c a y w ? f o r m a t = p a n d o c '   2 > / d e v / n u l l ;   e x i t   0�`  @ o      �_�_ 0 thereference theReference> D�^D r  +:EFE b  +6GHG b  +2IJI m  +.KK �LL  [J o  .1�]�] 0 thereference theReferenceH m  25MM �NN  ]F o      �\�\ 0 thetag theTag�^  6 OPO = =DQRQ o  =@�[�[ 0 targetformat targetFormatR m  @CSS �TT  M M DP UVU k  GZWW XYX r  GRZ[Z I GN�Z\�Y
�Z .sysoexecTEXT���     TEXT\ m  GJ]] �^^ � / u s r / b i n / c u r l   ' h t t p : / / l o c a l h o s t : 2 3 1 1 9 / b e t t e r - b i b t e x / c a y w ? f o r m a t = m m d '   2 > / d e v / n u l l ;   e x i t   0�Y  [ o      �X�X 0 thereference theReferenceY _�W_ r  SZ`a` o  SV�V�V 0 thereference theReferencea o      �U�U 0 thetag theTag�W  V bcb = ]dded o  ]`�T�T 0 targetformat targetFormate m  `cff �gg  S c a n n a b l e   c i t ec h�Sh k  gzii jkj r  grlml I gn�Rn�Q
�R .sysoexecTEXT���     TEXTn m  gjoo �pp � / u s r / b i n / c u r l   ' h t t p : / / 1 2 7 . 0 . 0 . 1 : 2 3 1 1 9 / b e t t e r - b i b t e x / c a y w ? f o r m a t = s c a n n a b l e - c i t e '   2 > / d e v / n u l l ;   e x i t   0�Q  m o      �P�P 0 thereference theReferencek q�Oq r  szrsr o  sv�N�N 0 thereference theReferences o      �M�M 0 thetag theTag�O  �S  7 k  }�tt uvu l }}�Lwx�L  w  
 set error   x �yy    s e t   e r r o rv z{z r  }�|}| m  }�~~ � 
 E r r o r} o      �K�K 0 
alerttitle 
alertTitle{ ��� r  ����� m  ���� ��� p B e t t e r   B i b T e X   d o e s   n o t   r e t u r n   t h e   s e l e c t e d   t a r g e t   f o r m a t� o      �J�J 0 alertmessage alertMessage� ��� l ���I���I  �   display error message   � ��� ,   d i s p l a y   e r r o r   m e s s a g e� ��H� I ���G��
�G .sysodisAaleR        TEXT� o  ���F�F 0 
alerttitle 
alertTitle� �E��D
�E 
mesS� o  ���C�C 0 alertmessage alertMessage�D  �H  �e  �d  �g  �f  , ��� l     �B�A�@�B  �A  �@  � ��� l     �?���?  � , & copy the citatin tag to the clipboard   � ��� L   c o p y   t h e   c i t a t i n   t a g   t o   t h e   c l i p b o a r d� ��� l ������ I ���>��=
�> .JonspClpnull���     ****� o  ���<�< 0 thetag theTag�=  �  as text   � ���  a s   t e x t� ��� l     �;�:�9�;  �:  �9  � ��� l     �8���8  �  
 debugging   � ���    d e b u g g i n g� ��� l     �7���7  � %  display dialog (the clipboard)   � ��� >   d i s p l a y   d i a l o g   ( t h e   c l i p b o a r d )� ��� l     �6�5�4�6  �5  �4  � ��� l     �3���3  � H B paste the reference and page number into the selected text editor   � ��� �   p a s t e   t h e   r e f e r e n c e   a n d   p a g e   n u m b e r   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r� ��2� l ����1�0� Z  �����/�.� > ����� o  ���-�- 0 	targetapp 	targetApp� m  ���� ��� 
 f a l s e� O  ����� k  ���� ��� I ���,�+�*
�, .miscactvnull��� ��� null�+  �*  � ��)� O  ����� I ���(��
�( .prcskprsnull���     ctxt� m  ���� ���  v� �'��&
�' 
faal� m  ���%
�% eMdsKcmd�&  � m  �����                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  �)  � 4  ���$�
�$ 
capp� o  ���#�# 0 	targetapp 	targetApp�/  �.  �1  �0  �2       �"���"  � �!
�! .aevtoappnull  �   � ****� � ������
�  .aevtoappnull  �   � ****� k    ���  "��  ,��  J��  b��  t��  ���  ���  ��� �� !�� +�� ��� ���  �  �  � �� 0 appname appName� B� 4 8 < @ C�� R V Y� l����������� �� ��
�	�� �� ���� � � ���'� ��2:B��KMS]fo~���������������� &0 activeeditorslist activeEditorsList� � 0 editorslist editorsList� 0 formatslist formatsList
� 
prcs
� 
pnam� "0 activeprocesses activeProcesses
� 
kocl
� 
cobj
� .corecnte****       ****� 0 activeeditor activeEditor� 0 editorcount editorCount
� 
ctxt� 0 	targetapp 	targetApp
� 
appr
� 
prmp
�
 
inSL
�	 
mlsl� 
� .gtqpchltns    @   @ ns  � 0 
alerttitle 
alertTitle� 0 alertmessage alertMessage
� 
mesS
� .sysodisAaleR        TEXT� 0 targetformat targetFormat� 0 thetag theTag
�  .sysoexecTEXT���     TEXT�� 0 
zotrunning 
zotRunning�� 0 thereference theReference
�� .JonspClpnull���     ****
�� 
capp
�� .miscactvnull��� ��� null
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���     ctxt��jvE�O������vE�O���mvE�O� 	*�-�,E�UO ,�[a a l kh  Ϡ �E` O��6FY h[OY��O�j E` O_ k  �a k/a &E` Y Z_ j -�a a a a a �a k/a fa  a &E` Y 'a E`  Oa !E` "O_  a #_ "l $Oa %E` O�a a &a a 'a �a k/a fa  a &E` (Oa )E` *Oa +j ,E` -O_ -a .  �_ (a /   a 0j ,E` 1Oa 2_ 1%a 3%E` *Y __ (a 4  a 5j ,E` 1O_ 1E` *Y ?_ (a 6  a 7j ,E` 1O_ 1E` *Y a 8E`  Oa 9E` "O_  a #_ "l $Y hO_ *j :O_ a ; )*a <_ / *j =O� a >a ?a @l AUUY h ascr  ��ޭ