# 00_journalists.rb
# Projet Data Scientist - Partie Big Data
# Analyse d'un array de handles Twitter de journalistes

journalists = [
  "@jcunniet","@PaulLampon","@Aziliz31","@ssoumier","@marionsouzeau","@gaellombart",
  "@bendarag","@AurelieLebelle","@julienduffe","@thomaspoupeau","@LilyRossignol",
  "@ClairGuedon","@stephanieauguy","@claw_prolongeau","@_JulieMenard","@LColcomb",
  "@Zlauwereys","@MeLonguet","@DorotheeLN","@NolwennCosson","@ADaboval","@Remibaldy",
  "@bderveaux","@amandechap","@ELODIESOULIE","@nbongarcon","@HeloAb","@Panamorama",
  "@gregplou","@BenoitBerthe","@LauraBruneau89","@Anthony_Lieures","@Sharonwaj",
  "@mcsonkin","@pverduzier","@emiliel3","@Julien_MARION","@SophiFay","@bdelombre",
  "@annalecerf","@AdriaBudry","@DejNikolic","@iJaffre","@CyrusleVirus","@GPardigon",
  "@e_vallerey","@IsabelleSouquet","@AudeDavidRossi","@Yoann_Pa","@CeliaPenavaire",
  "@perraultvincent","@cboulate","@JustineWeyl","@Paulinejacot","@juliechab",
  "@aslechevallier","@phnou","@Seb_Pommier","@Alex_Bensaid","@GuillaumeGaven",
  "@annelaurechouin","@Oliviader","@guerricp","@JMMarchaut","@cyceron","@gregory_raymond",
  "@vhunsinger","@l_peillon","@fannyguinochet","@EAssayag","@KibweAdom","@YvonHerry",
  "@JohanGarciajg","@saidlabidi","@lauranneprov","@LeaDavy","@francois_remy","@CGuicheteau",
  "@FloMaillet","@m_perroud","@oBrunet_TSMF","@MoonVdc","@jc2taille","@NellyMoussu",
  "@VirginK","@b_misa","@FabriceCouste","@barbara_prose","@lelia2m","@brunoaskenazi",
  "@laurenechamp","@ysisbox","@juliengagliardi","@PierreLel","@kdeniau","@_TerraInc",
  "@DominicArpin","@antoinfonteneau","@nanotousch","@jb_roch","@YaniKhezzar","@Anne_Bechet",
  "@NCapart","@SamyBenNaceur","@Joumany","@Julietteraynal","@TGiraudet","@SaraTanit",
  "@HappeFrederic","@antoinellorca","@michelpicot","@Sev_Ryne","@bobdobolino","@murdever",
  "@YGrandmontagne","@Mnyo","@EdKOSCIANSKI","@tnoisette","@jankari","@delbello_rom",
  "@rflechaux","@NadiaSorelli","@IT_Digital","@abarbaux","@PhilippeLeroy","@schaptal",
  "@marionspee","@lisavignoli","@ChloeAeberhardt","@MartineJacot","@JuliaPascualita",
  "@curieusedetout","@sgraveleau","@bif_o","@ElisaPineau","@zinebdryef","@apiquard",
  "@pierrehaski","@StephanieDelmas","@Blandine_Garot","@vergara_i","@evan_lebastard",
  "@SophieVclt","@OlivierLevrault","@alicedorgeval","@LouiseMalnoy","@alix_fx","@pierre_baudis",
  "@LucMagoutier","@AgatheMuller","@SGianninelli","@PaulineBoyer33","@NaomiHalll","@romaindlx",
  "@marionbr","@Burtschy","@JacobEtienne","@as_lizzani","@marie_simon","@LaureDaussy",
  "@FabriceAmedeo","@LoubnaChlaikhy","@PlummerWilliam","@OlivierMarin1","@alaurefremont",
  "@mwesfreid","@ChBaDe","@pmathon","@theobaldmarie","@Lnpagesy","@marclandre","@paoliniesther",
  "@Feertchak","@JBLitzler","@GuillaumeErrard","@quentinperinel","@TristanQM","@mlbo",
  "@constancejamet","@LoraTerrazas","@emiliegeffray","@Mathilde_Sd","@CaroPiquet","@DCanivez",
  "@TIM_7375","@blandinelc","@ivanrioufol","@arthurberdah","@SarahLecoeuvre","@guillaume_gui",
  "@DamienMercereau","@W_Chloe","@Assma_MD","@EugenieBastie","@HiTech_lexpress","@bcondominas",
  "@Laurie_Z_","@jeanfrancgerard","@MathieuPagura","@BGUYF","@AlainPiffaretti","@AudreyKucinskas",
  "@julienhory","@Pierrefalga","@TiphThuillier","@cdaniez","@LigerBaptiste","@D_Peras",
  "@julie_dlb","@Fatiha_Temmouri","@julian2lamancha","@GaetaneDeljurie","@JulianMattei","@M_Vicuna",
  "@DeBruynOlivier","@Nehed_Jendoubi","@antoine_grenapi","@ColonnaGen","@VictoriaGairin",
  "@Clement_Lacombe","@TVigoureux","@MargauxObriot","@solinedelos","@RocheSabine","@dangerkens",
  "@EdouardDutour","@MDondeyne","@DupuisNathalie1","@bouscarel","@Mathieu2jean","@Sophie_T_J",
  "@laurentcalixte","@patrockwilliams","@PascaleKremer","@AlexJaquin","@LauraIsaaz","@cath_robin",
  "@Del_Gautherin","@Isaduriez","@lucietuile","@AugeyBastien","@mcastagnet","@AminaKalache",
  "@mvaudano","@CParrot","@ombelinetips","@_JoinLion","@BarbolosiRose","@ToiBruno1","@FloraClodic",
  "@xjbdx","@AlexiaEy","@Emjy_STARK","@elcoco01","@rabilebon","@pflovens_","@FabriceFrossard",
  "@MorganeSERRES","@MarjolaineKoch","@edgarsnow","@SRNLF","@CChassigneux","@KerinecMoran",
  "@NassiraELM","@NewsRicard","@Sandreene","@Emilezrt","@Pierre_Do","@Micode","@CColumelli",
  "@DavidAbiker","@ClementBergantz","@benjaminrabier","@celinekallmann","@edwyplenel","@C_Barbier",
  "@JJBourdin_RMC","@LaurenceFerrari","@aslapix","@IsaMillet","@MaximeSwitek","@tomjoubert",
  "@jszanchi","@roqueeva","@XavierBiseul","@florencesantrot","@AntoineCrochet","@freeman59",
  "@MaudeML","@philippe_gulpi","@mathieum76","@kiouari","@imanemoustakir","@BenedicteMallet",
  "@Emilie_Brouze","@antoinebarret","@_nicolasbocquet","@remibuhagiar","@CourretB","@AymericRobert",
  "@miraelmartins","@pmaniere","@jesuisraphk","@David_Ingram","@pcelerier","@technomedia",
  "@Geraldinedauver","@ThierryLabro","@Newsdusud","@nrauline","@gbregeras","@SCouasnonBFM",
  "@actualites_nrv","@dimitrimoulins","@oli_aura","@FabieChiche","@Vincent_Raimblt",
  "@ChristophGreuet","@PAlbuchay","@MarrauddesGrot","@vtalmon","@cedric","@olivierfrigara",
  "@Julien_Jay","@LydiaBerroyer","@Shuua","@datisdaz","@Steuph","@ameliecharnay",
  "@Bruno_LesNums","@LelloucheNico","@CciliaDiQuinzio","@Elodie_C","@SylvRolland","@Kocobe",
  "@FL_Debes","@jdupontcalbo","@GarciaVictor_","@NicoRichaud","@RHoueix","@simottel",
  "@DamienLicata","@annabelle_L","@Lea_Lejeune","@axel_deb","@marin_eben","@ptiberry",
  "@MatthieuDelach","@sandrinecassini","@benjaminferran","@ppgarcia75","@NotPatrick",
  "@ivalerio","@FabienneSchmitt","@alexgoude","@JeromeColombain","@manhack","@Capucine_Cousin",
  "@Fsorel","@oliviertesquet","@marjoriepaillon","@ginades","@PierreTran","@DelphineCuny",
  "@reesmarc","@lauratenoudji","@ldupin","@carolinedescham","@Lucile_Quillet","@cgabizon",
  "@Allocab","@epenser","@JAGventeprivee","@frwrds","@Laure__Bourdon","@Xavier75",
  "@maximeverner","@s_jourdain","@LoriHelloc"
]

# -----------------------------
# Questions demandées
# -----------------------------

# 1. Combien de journalistes ?
# Ici on utilise .count pour obtenir la taille de l'array
puts "👉 Il y a #{journalists.count} journalistes dans la liste."        


# 2. Combien d'handles contiennent un numéro ?
# On filtre avec une regex \d qui détecte les chiffres
with_numbers = journalists.select { |h| h =~ /\d/ }
puts "👉 #{with_numbers.count} handles contiennent un numéro."


# 3. Combien contiennent 'aude' (peu importe la casse) ?
# On convertit tout en minuscules avec .downcase puis on cherche "aude"
with_aude = journalists.select { |h| h.downcase.include?("aude") }
puts "👉 #{with_aude.count} handles contiennent 'aude'."


# 4. Combien commencent par une majuscule (juste après le @) ?
# On regarde la 2ème lettre (index 1) et on teste si c'est une majuscule
start_with_capital = journalists.select { |h| h[1] =~ /[A-Z]/ }
puts "👉 #{start_with_capital.count} handles commencent par une majuscule."


# 5. Combien contiennent au moins une majuscule ?
# Ici on cherche une majuscule n'importe où dans le handle
with_capital = journalists.select { |h| h =~ /[A-Z]/ }
puts "👉 #{with_capital.count} handles contiennent au moins une majuscule."


# 6. Combien d'underscore _ dans tous les pseudos confondus ?
# On fusionne tous les handles avec .join puis on compte les "_"
underscore_count = journalists.join.count("_")
puts "👉 Il y a #{underscore_count} underscores au total."


# 7. Trie la liste par ordre alphabétique
# On utilise .sort pour trier l'array
sorted_handles = journalists.sort
puts "👉 Les 10 premiers handles triés alphabétiquement :"
puts sorted_handles.first(10)


# 8. Les 50 handles les plus courts
# On trie par longueur avec .sort_by { |h| h.length }
shortest_50 = journalists.sort_by { |h| h.length }.first(50)
puts "👉 Les 50 handles les plus courts sont :"
puts shortest_50

# 9. Position de @epenser
# La méthode .index retourne l'indice (la position) de l'élément recherché.
position_epenser = journalists.index("@epenser")
if position_epenser
  puts "👉 La position de @epenser est #{position_epenser} dans l'array."
else
  puts "👉 @epenser n'est pas dans la liste."
end

# -----------------------------
# Bonus : petit menu interactif
# -----------------------------
puts "\n🎉 Menu interactif 🎉"
puts "Choisis une question :"
puts "1 - Nombre de journalistes"
puts "2 - Handles avec numéro"
puts "3 - Handles avec 'aude'"
puts "4 - Handles commençant par majuscule"
puts "5 - Handles contenant une majuscule"
puts "6 - Nombre total d'underscores"
puts "7 - Tri alphabétique (10 premiers)"
puts "8 - 50 handles les plus courts"
puts "9 - Position de @epenser"

choice = gets.chomp.to_i

case choice
when 1
  puts "👉 Il y a #{journalists.count} journalistes."
when 2
  puts "👉 #{with_numbers.count} handles contiennent un numéro."
when 3
  puts "👉 #{with_aude.count} handles contiennent 'aude'."
when 4
  puts "👉 #{start_with_capital.count} handles commencent par une majuscule."
when 5
  puts "👉 #{with_capital.count} handles contiennent au moins une majuscule."
when 6
  puts "👉 Il y a #{underscore_count} underscores au total."
when 7
  puts sorted_handles.first(10)
when 8
  puts shortest_50
when 9
  puts position_epenser ? "👉 La position de @epenser est #{position_epenser}." : "👉 @epenser n'est pas dans la liste."
else
  puts "❌ Choix invalide."
end
