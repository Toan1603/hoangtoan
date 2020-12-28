-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 18, 2020 lúc 03:56 SA
-- Phiên bản máy phục vụ: 5.7.14
-- Phiên bản PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doanchuyennganh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `ma` int(11) NOT NULL,
  `taikhoan` varchar(20) NOT NULL,
  `matkhau` varchar(250) NOT NULL,
  `tenadmin` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`ma`, `taikhoan`, `matkhau`, `tenadmin`) VALUES
(14, 'toan', '7301eea172e89a223798467d4a91e7a9', 'Toan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banh`
--

CREATE TABLE `banh` (
  `ma_banh` varchar(10) NOT NULL,
  `ten_banh` varchar(50) NOT NULL,
  `gia` int(11) NOT NULL,
  `thanh_phan` text NOT NULL,
  `mo_ta` text NOT NULL,
  `hinh` text NOT NULL,
  `ma_loai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banh`
--

INSERT INTO `banh` (`ma_banh`, `ten_banh`, `gia`, `thanh_phan`, `mo_ta`, `hinh`, `ma_loai`) VALUES
('$casd', 'wqe', 200, 'qwe', 'qwe', '', 'BN'),
('TN01', 'Vani Klimt', 20000, '-Hỗn hợp bột  \r\n-Lubang\r\n-Sữa, sốt vani, trứng…', 'Một chiếc bánh Vani Klimt là sự kết hợp giữa hỗn hợp bột Lubang cao cấp, sốt vani, trứng, sữa. Bánh tươi được sử dụng các nguyên liệu chất lượng nhất để mang đến hương vị hoàn hảo. Bánh có hình tròn, vỏ mềm mịn, lớp ruột xốp mềm và tươi, dai đến từng thớ bánh…', 'img_VaniKlimt', 'BN'),
('TN02', 'Bánh Mexico', 18000, '-Hỗn hợp bột Lubang\r\n-Nhân kem\r\n-Sốt Mexico…\r\n', 'Bánh Mexico là một trong những hương vị nổi bật, ấn tượng. Nguyên liệu chính làm bánh gồm hỗn hợp bột Lubang, nhân kem và sốt Mexico. Một chiếc bánh nhỏ xinh xắn nhưng sẽ mang tới cho quý thực khách sự hài lòng bởi mùi thơm hấp dẫn của lớp bánh nướng bên ngoài, hương vị béo ngậy, ngọt ngào của sốt bơ và nhân kem, vị bùi của hạnh nhân thái lát,…', 'img_mexico', 'BN'),
('TN03', 'Bánh bơ sữa Cherry đen', 22000, '-Hỗn hợp bột  NhậtBản\r\n-Nhân bơ nho\r\n-Bơ dứa, trứng ….', 'Nguyên liệu làm bánh đều được chọn lọc kỹ càng, thuộc dòng nguyên liệu làm bánh cao cấp: hỗn hợp bột Nhật Bản, nhân bơ nho, bơ dứa, trứng,…Khi thưởng thức một chiếc bánh bơ nho, thực khách sẽ cảm nhận được một hương vị cực kỳ mới mẻ và ấn tượng. Bánh thơm mùi bơ dứa và mè được dắc đều phía trên, ngọt, dai vị nho, béo ngậy vị sữa và trứng,…', 'img_cherryden', 'BN'),
('TN04', 'Bánh Olive 6P', 32000, '-Hỗn hợp bột cứng\r\n-Bơ, sữa, đường\r\n-Trứng gà nguyên quả', 'Bánh mì luôn là đồ ăn dễ ăn, tiện lợi và được nhiều khách hàng lựa chọn cho thực đơn bữa sáng và các bữa ăn nhẹ trong ngày. Có rất nhiều công thức để tạo ra những loại bánh mì với hương vị khác nhau. Tại cửa hàng chúng tôi các chuyên gia làm bánh đã khéo léo léo kết hợp với olive thảo mộc, cùng một số nguyên liệu khác như bơ, trứng gà, sữa... để tạo nên một hương vị mới mẻ, hấp dẫn.', 'img_olive', 'BN'),
('TN05', 'Socola đan mạch Chocolate', 29000, '-Hỗn hợp bột Đan Mạch\r\n-Bơ, trứng, socola', 'Chiếc bánh mì socola Đan Mạch được làm ra với các nguyên liệu chính gồm: hỗn hợp bột Đan Mạch, bơ, trứng, socola…Tạo hình bắt mắt của chiếc bánh khi đan xen từng lớp socola ngọt ngào với lớp bột mì vàng giòn là điều đầu tiên thu hút thực khách. Chưa kể đến hương vị ngọt ngào và chuẩn vị “ẩm thực Đan Mạch”. Vỏ giòn, mềm mịn. ', 'img_socoladm', 'BN'),
('TN06', 'Bánh Bơ Tỏi', 38000, '-Hỗn hợp bột mì cao cấp\r\n-Bơ, tỏi, đường, sữa', 'Cốt bánh giòn tan thú vị. Màu vàng ruộm và phủ đường phía ngoài, thơm lừng mùi bơ nướng và mùi tỏi đặc trưng. Hương vị béo ngậy và vị bùi của bơ trứng bung tỏa trong mỗi lát bánh chắc chắn sẽ khiến bạn phải ngất ngây.', 'img_banhmibotoi', 'BN'),
('TN07', 'Toast Pull – apart Sữa Tươi', 35000, 'Hỗn hợp bột bánh gối sữa tươi\r\n-Bơ, bột sữa\r\n-Lòng trắng trứng', 'Nguyên liệu của một chiếc bánh Toast Pull gồm hỗn hợp bột bánh gối sữa tươi, bơ, sữa tươi, lòng trắng trứng… Nguyên liệu được phối trộn để tất cả các thành phần hòa quyện vào nhau sẽ được định hình dạng khối vuông và đưa vào lò nướng. Bánh sau khi hoàn tất có màu vàng đẹp mắt, thơm lừng mùi bơ và sữa tươi, vỏ bánh mềm mịn, ruột bên trong đặc, xốp.', 'img_ToastPull', 'BN'),
('TN08', 'Toast Vua Hokkaido', 32000, '-Hỗn hợp bột bơ mặn\r\n-Sốt Mexico\r\n-Sữa tươi\r\n-Trứng, đường', 'Bánh mỳ Hokkaido có nguồn gốc từ vùng đất Hokkaido nổi tiếng ở Nhật Bản. Đây là một trong những loại bánh có hương vị rất ấn tượng, thơm lừng mùi sữa tươi, sốt và bột bơ, trứng hòa quyền. Vỏ vàng mềm mịn, ruột bông đặc, độ ẩm vừa phải.', 'img_ToastVua', 'BN'),
('TN09', 'Toast Nho Đường Đen', 38000, '-Hỗn hợp bột cứng\r\n-Sốt đường đen\r\n-Nho khô, Trứng', 'Mỗi chiếc bánh hình tròn có vỏ vàng mịn, xốp bông. Mặt trên của bánh là các gia vị như mè trắng, nước xốt đường đen, nho khô. Ruột bánh bông mềm. Đặc biệt, xen kẽ từng lớp kem bông mịn sẽ là những hạt nho khô thơm ngon với hương vị ngọt chua đặc trưng.', 'img_Nhodd', 'BN'),
('TN10', 'Bánh mì Socola quả cầu', 38000, '-Hỗn hợp bột socola\r\n-Bơ, bột cacao\r\n-Trứng', 'Không chỉ là món bánh ngon miệng, Socola quả cầu còn là nguồn thực phẩm cung cấp đầy đủ chất dinh dưỡng, năng lượng và protein cho cơ thể. Chính vì thế, chúng được sử dụng nhiều trong các bữa ăn sáng tại gia đình, các bữa điểm tâm, bữa ăn nhẹ trong các giờ nghỉ tại nơi làm việc.', 'img_sclquacau', 'BN'),
('TN11', 'Bánh Mì Ngũ Cốc Lúa Mạch', 38000, '-Bột lúa mì đen\r\n-Bơ, trứng, hạnh nhân\r\n-Yến mạch, Hướng dương, hạt bí, vừng', 'Bánh mì ngũ cốc được làm ra với các nguyên liệu chính gồm: bột lúa mì đen, bơ, trứng, hạnh nhân, yến mạch, hướng dương, hạt bí, .. Bánh rất được thực khách ưa chuộng vì là loại thực phẩm lành mạnh, có lợi cho sức khỏe và giàu chất dinh dưỡng. Bánh không chỉ cung cấp protein, phytoestrogen, vitamin, khoáng chất thiết yếu mà còn làm chậm quá trình chuyển hóa, tạo cảm giác no lâu và hỗ trợ quá trình giảm cân.', 'img_ngucoclm', 'BN'),
('TN12', 'Toast Matcha Đậu Đỏ Đan Mạch', 42000, '-Hỗn hợp bột Đan Mạch\r\n-Sốt đường phong, Đậu đỏ\r\n-Trứng, sữa', 'Bánh có mùi thơm ngào ngạt của trứng, bơ, bột mì. Nhờ định hình khác biệt, gối cuộn từng lớp, ruột bánh chắc đặc. Vỏ ngoài vàng giòn thơm ngon. Tách từng lớp bánh thực khách sẽ cảm nhận được hương thơm matcha bung tỏa, xen kẽ từng lớp bánh là vị đậu đỏ ngọt ngào, hấp dẫn.', 'img_matchadd', 'BN'),
('TN13', 'Giăm bông phô mai Đan Mạch', 29000, '-Hỗn hợp bột Đan Mạch\r\n-Bơ, trứng, xúc xích….', 'Vỏ bánh được làm từ hỗn hợp bột Đan Mạch vàng thơm, mềm mịn và bao trọn phần nhân phô mai và xúc xích bên trong. Lớp phô mai béo ngậy giúp bánh mì không bị khô cùng hương vị giăm bông tuyệt ngon hòa quyện lại tạo thành món bánh hoàn hảo cho bữa sáng, bữa ăn nhẹ của bạn và gia đình.', 'img_giambong', 'BN'),
('TN14', 'Bánh Croissant hạnh nhân', 24000, '-Hỗn hợp bột Croisant\r\n-Hạnh nhân thái lát\r\n-Kem, đường', 'Bánh sau khi được trộn đều nguyên liệu, định hình và nướng thường xốp giòn, thơm lừng mùi bơ sữa, có thể xé ra từng lớp dai, mỏng, ruột mềm xốp, không quá đặc. Tất cả hòa quyện với hạnh nhân thái lát thơm ngậy phía ngoài làm nên hương vị tuyệt hảo, khó cưỡng.', 'img_croissant', 'BN'),
('TN15', 'Mousse Chanh Leo', 320000, '-Gato VanillaMousse chanh leo\r\n-Cherry, Socola', 'Bánh mang hương vị chanh leo lạ miệng và cực kỳ hấp dẫn. Cốt bánh xốp mịn với từng lớp bông lan và kem tươi xen kẽ. Pudding chanh leo vàng tươi bao trọn phía ngoài kết hợp với socola và cherry. Vị chua dịu của chanh leo hòa quyện với vị ngọt ngào của kem tươi mang đến chiếc bánh Mousse Chanh leo ấn tượng, ngon miệng và không hề bị ngán.', 'img_mouchanh', 'BSN'),
('TN16', 'Tiramisu', 59000, '-Gato cà phê, Nhân tiramisu\r\n-Rượu cà phê\r\n', 'Tiramisu là một trong những loại bánh tráng miệng rất được ưa chuộng tại Việt Nam. Món bánh được làm ra với các nguyên liệu chính gồm: rượu cà phê, kem cà phê, nhân tiramisu và cacao, pha thêm vị béo của phô mai, trứng.. Vì thế, khi thưởng thức, tiramisu có vị thanh ngọt nhẹ nhàng, hơi hơi nồng của mùi rượu, thơm đậm đà mùi cà phê. ', 'img_Tiramisu', 'BN'),
('TN17', 'Mousse Phô mai Matcha', 55000, '-Gato vanilla\r\n-Mouse phô mai\r\n-Mousse matcha, Đậu đỏ', 'Hương vị mousse phô mai trà xanh là sự hòa quyện giữa các nguyên liệu gồm gato vanilla, mouss, đậu đỏ. Một chút béo ngậy, ngon lành từ phô mai tươi, một chút ngọt thanh từ trà xanh và hương thơm hấp dẫn của vanilla sẽ mang tới cho bạn một món tráng miệng hoàn hảo, làm bạn hài lòng.', 'img_moumatcha', 'BN'),
('TN18', 'Opera', 55000, '-Gato hạnh nhân\r\n-Nhân kem tươi\r\n-Nhân socola', 'Chiếc bánh Opera mang tới hương vị ngọt ngào và lãng mạn. Cốt bánh nhiều tầng xốp mịn xen kẽ cùng các lớp socola và kem tươi, socola nguyên chất phủ bóng mịn bề mặt vô cùng thẩm mỹ và hấp dẫn. Thực khách sẽ được thưởng thức một chiếc gato điểm tâm thấm vị socola từ trong ra ngoài.', 'img_ Opera', 'BN'),
('TN19', 'Cheese Camilla', 65000, '-Phô mai Anchor\r\n-Việt quất\r\n-Cookies', 'Bánh được làm ra với nguyên liệu chính gồm phô mai Anchor cao cấp. Để khắc chế tính béo ngậy nhưng có thể gây ngấy, ngán, các chuyên gia làm bánh đã khéo léo đưa thêm hương vị Việt Quất và cookies vào bánh. Thực khách sẽ cảm nhận được vị béo ngậy của phô mai nguyên chất, vị chua chua ngọt ngọt từ những trái Việt quất và vị đế bánh cookies thơm ngon, xốp mềm.', 'img_CheeseCamilla', 'BN'),
('TN20', 'CARAMEL PHÁP French Caramel', 320000, '-Gato vanilla\r\n-Pudding caramel\r\n-Nhân nho kem tươi', 'Bánh kem Caramel Pháp  lấy caramel làm hương vị chủ đạo và kết hợp với nhân nho và kem tươi. Bánh được sản xuất từ những nguyên liệu chất lượng, cao cấp nhất đảm bảo độ hấp dẫn, ngon miệng và tốt cho sức khỏe của người dùng.', 'img_caramelp', 'BSN'),
('TN21', 'Cookie Tuiles Hạnh nhân', 55000, '-Bơ Anchor,Mật ong\r\n-Hạnh nhân, Hạt điều, Hạt bí', 'Tuiles hạnh nhân là loại bánh quy được làm với nguyên liệu chủ yếu là bột mỳ, bơ Anchor, hạnh nhân và điều nguyên hạt, hạt bí….Các nguyên liệu được khuấy trộn đều để hòa quyện vào nhau, sau đó được định hình vào khuôn bánh và cắt thành từng miếng vừa ăn.', 'img_cokihn', 'BN'),
('TN22', 'Cookie Socola Skate', 55000, '-Bơ Anchor\r\n-Socola, hạnh nhân\r\n-Trứng', 'Mỗi miếng bánh thơm ngon, chứa đựng cả tâm huyết của người làm bánh. Thực khách sẽ cảm nhận được lớp bánh quy socola ngọt ngào, giòn tan, xen kẽ với đó là vị hạnh nhân đậm đà, có độ bùi và béo ngậy….', 'img_cokiscl', 'BN'),
('TN23', 'Cookie Hạt điều Macaroon', 55000, '-Bơ Anchor\r\n-Bột hạnh nhân\r\n-Hạt điều, Trứng', 'Được làm ra từ những nguyên liệu như bơ Anchor, bột hạnh nhân, hạt điều, trứng… nhưng mang hương vị cực kỳ ấn tượng, hấp dẫn. Hương thơm của bơ nướng thơm lừng, côt bánh chắc, giòn tan và ngọt ngào hòa quyện cùng vị đậm đà, bùi bùi của điều nguyên hạt phủ phía trên. Có thể nói, cookies maracoon chính là sự pha trộn giữa vị – sắc – hương.', 'img_cokihd', 'BN'),
('TN24', 'Bánh dứa', 14000, '-Bột mỳ, trứng, sữa\r\n-Nhân dứa', 'Bánh dứa thường được sử dụng trong các bữa tiệc trà hoặc làm đồ ăn dặm, món tráng miệng. Bánh gồm phần quy bột mì xốp, giòn tan bên ngoài. Ngay khi vừa thưởng thức miếng đầu tiên, thực khách sẽ cảm nhận được lớp quy này giường như tan trong miệng.', 'img_bdua', 'BN'),
('TN25', 'Bánh táo', 14000, '-Bột mỳ, trứng, sữa\r\n-Nhân táo', 'Lớp bánh quy  bông xốp bao trọn nhân mứt táo ngọt ngào, tươi dai làm nên hương vị tuyệt hảo của chiếc bánh quy táo. Món bánh này sẽ là sự lựa chọn hoàn hảo trong các bữa tiệc trà, bữa ăn điểm tâm, đồ ăn tráng miệng hay đồ ăn vặt.', 'img_btao', 'BN'),
('TN26', 'Bánh Xúc xích Phô mai', 22000, '-Hỗn hợp bột Đan Mạch\r\n-Phô mai, Xúc xích, Sốt cà chua', 'Những chiếc bánh mỳ phô mai xúc xích Đan Mạch dai mềm, thơm ngon kết hợp cùng xúc xích đậm đà, vị phô mai béo ngậy sẽ là một lựa chọn lý tưởng để cung cấp đủ dinh dưỡng và năng lượng cho một ngày hoạt động, sáng tạo.', 'img_banhxx', 'BN'),
('TN27', 'Mochi Dâu Tây', 290000, '-Gato Vanilla\r\n-Nhân pudding\r\n-Mochi, Dâu tây …', 'Mochi là một trong những món bánh truyền thống của Nhật Bản, được nhiều bạn trẻ Việt Nam yêu thích. Đặc biệt, món bánh kem mochi dâu tây với hương vị dâu tây chua chua, ngọt ngọt, dẻo và thơm ngon kết hợp với kem vanila tươi mát béo ngậy sẽ khiến bạn say mê khi thưởng thức.', 'img_mochidau', 'BSN'),
('TN28', 'Socola Việt Quất', 320000, '-Việt quất, Gato socola\r\n-Pudding cacao\r\n-Socola dâu tây', 'Bên trong, mỗi lớp bánh mì xốp mịn, thơm ngon sẽ được xen kẽ với lớp thạch pudding socola, kem dâu tây và socola mang tới hương vị đa dạng khi thưởng thức một miếng bánh. Bên ngoài bánh phủ một lớp kem socola, pudding cacao và socola bào.', 'img_sclvq', 'BSN'),
('TN29', 'ANGEL', 320000, '-Gato Vanilla\r\n-Nhân sữa, dưa vàng\r\n-Nhân pudding', 'Bánh kem Angel được trang trí giống với hình ảnh một hộp quà được đóng gói cẩn thận, thắt nơ hoa bằng socola rất dễ thương, xinh xắn. Bánh có màu vàng tươi tắn, nổi bật, nhân sữa, nhân pudding cùng vị dưa vàng thơm ngon bao phủ phía trên làm nên một hương vị ngọt ngào hấp dẫn đúng như tên gọi của nó – bánh kem Angel.', 'img_angel', 'BSN'),
('TN30', 'TIFFANY', 350000, '-Gato Vanilla\r\n-Nhân mochi\r\n-Sốt tiffany, Socola\r\n\r\n', 'Chiếc bánh có màu xanh nổi bật với cách trang trí tinh tế, đẹp mắt. Cốt bánh bông lan tươi xốp bông, xen kẽ lớp nhân mochi ngọt ngào. Vỏ bánh phủ sốt tiffany mềm mịn, hấp dẫn. Mỗi miếng bánh thơm ngon sẽ chắc chắn sẽ làm cho khách mời của bạn phải ấn tượng, hài lòng và đồng thời làm cho mỗi bữa tiệc trở nên ấm cúng, vui vẻ hơn.', 'img_tiffany', 'BSN'),
('TN31', 'Kitty Cat', 380000, '-Gato Vanilla\r\n-Pudding\r\n-Socola, Đào', 'Các nguyên liệu làm bánh được các chuyên gia chọn lựa kỹ càng, thuộc dòng cao cấp và chất lượng nhất. Đặc biệt là đối với với phần kem gato, kem được sản xuất trong ngày đảm bảo độ tươi, ngon và mùi thơm hấp dẫn. Mỗi miếng bánh kem Kitty Cat từ hương vị đến hình thức đều được chăm chút tỉ mỉ và mang trọn tâm huyết của người làm bánh.', 'img_kitty', 'BSN'),
('TN32', 'Strawberry Vanilla', 290000, '-Gato vanilla\r\n-Nhân Pudding\r\n-Nhân dâu tây kem tươi', 'Bánh kem dâu tây là hương vị rất được ưa chuộng hiện nay. Dâu tây và kem tươi là 2 thứ nguyên liệu vô cùng hợp nhau. Hương thơm hấp dẫn, vị ngọt ngọt chua chua của dâu tây kết hợp với lớp bánh mì xốp mịn và kem tươi vanilla béo ngậy chắc chắn sẽ làm nên một hương vị bánh kem hoàn hảo.', 'img_strawberry', 'BSN'),
('TN33', 'Mochi Trà xanh', 290000, '-Gato Matcha\r\n-Nhân Panna Cotta\r\n-Nhân đậu đỏ', 'Một chiếc bánh kem từ matcha, tại sao không? Các chuyên gia làm bánh kem đã khéo léo kết hợp hương vị matcha với nguyên liệu panna cotta và đậu đỏ để làm nên một chiếc bánh kem Matcha Panna cotta hấp dẫn, đẹp mắt và ngon miệng.', 'img_mochitra', 'BSN'),
('TN34', 'BROWNIE GIFT SET', 245000, 'Bánh nướng từ bơ,bột cacao và chocolate đen cùng với hạt hạnh nhân và óc chó', 'Brownie thực sự là một lựa chọn cho những ai yêu thích vị đắng socola, ít thích ngọt.Thưởng thức bánh với rượu vang, trà hay cafe đều ổn, nhưng có lẽ là lí tưởng nhất với rượu vang đỏ Merlot.', 'img_banhden', 'BN'),
('TN35', 'TIRAMISU CUP', 35000, '-Phô mai mascarpone, trứng, kem tươi whipping, cà phê, rượu Rhum\r\n-Mặt bánh rắc bột cacao.', 'TIRAMISU là một loại bánh ngọt tráng miệng vị cà phê rất nổi tiếng của nước Ý. Công thức bánh này được biến tấu thành nhiều món bánh và món tráng miệng khác nhau. Trong phiên bản hiện đại của Tiramisu mà Dolce Vita đang làm thì phần bánh lady fingers được nhúng thêm rượu.', 'img_tricup', 'BN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `ma_bl` varchar(10) NOT NULL,
  `noidung` text NOT NULL,
  `ngaybinhluan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet_dh`
--

CREATE TABLE `chitiet_dh` (
  `ma_dh` varchar(10) NOT NULL,
  `ma_banh` varchar(10) NOT NULL,
  `soluong` int(10) NOT NULL,
  `tonggia` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitiet_dh`
--

INSERT INTO `chitiet_dh` (`ma_dh`, `ma_banh`, `soluong`, `tonggia`) VALUES
('1607581112', 'TN10', 11, 38000),
('1607581112', 'TN21', 1, 55000),
('1607581112', 'TN31', 1, 380000),
('1607581112', 'TN13', 1, 29000),
('1608018018', 'TN17', 1, 55000),
('1608018018', 'TN06', 1, 38000),
('1608018018', 'TN23', 1, 55000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `ma_dh` varchar(10) NOT NULL,
  `ma_kh` varchar(50) NOT NULL,
  `ngaydat` date NOT NULL,
  `ngaygiao` date NOT NULL,
  `diachigiao` text NOT NULL,
  `trangthai` text NOT NULL,
  `ghichu` text NOT NULL,
  `thanhtien` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`ma_dh`, `ma_kh`, `ngaydat`, `ngaygiao`, `diachigiao`, `trangthai`, `ghichu`, `thanhtien`) VALUES
('1607581112', 'nguyenhtoan163@gmail.com', '2020-12-10', '2020-12-10', '180 cao lo', '0', 'nguyenhtoan163@gmail.com', 882000),
('1608018018', 'wonder@gmail.com', '2020-12-15', '2020-12-15', '180 cao lo phuong 4', '0', 'wonder@gmail.com', 826000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `tai_khoan` varchar(50) NOT NULL,
  `mat_khau` varchar(50) NOT NULL,
  `ten_kh` varchar(50) NOT NULL,
  `sdt` text NOT NULL,
  `dia_chi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`tai_khoan`, `mat_khau`, `ten_kh`, `sdt`, `dia_chi`) VALUES
('nguyenhtoan163@gmail.com', '16031999', 'toan nguyen', '0962680872', '180 cao lo'),
('wonder@gmail.com', 'wonder', 'wonder', '0962680872', '180 cao lo phuong 4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyen_mai`
--

CREATE TABLE `khuyen_mai` (
  `makhuyenmai` varchar(20) NOT NULL,
  `tenkhyenmai` text NOT NULL,
  `mota` text NOT NULL,
  `ngaybd` date NOT NULL,
  `ngaykt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `ma_loai` varchar(10) NOT NULL,
  `ten_loai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`ma_loai`, `ten_loai`) VALUES
('BAC', 'Bánh ăn chơi'),
('BAT', 'Bánh ăn thật'),
('BN', 'Bánh ngọt'),
('BSN', 'Bánh Sinh Nhật');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `ma_nv` varchar(10) NOT NULL,
  `ten_nv` varchar(50) NOT NULL,
  `sdt` int(10) NOT NULL,
  `diachi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ma`);

--
-- Chỉ mục cho bảng `banh`
--
ALTER TABLE `banh`
  ADD PRIMARY KEY (`ma_banh`),
  ADD KEY `ma_loai` (`ma_loai`);

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`ma_bl`);

--
-- Chỉ mục cho bảng `chitiet_dh`
--
ALTER TABLE `chitiet_dh`
  ADD KEY `ma_dh` (`ma_dh`),
  ADD KEY `ma_banh` (`ma_banh`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`ma_dh`),
  ADD KEY `ma_kh` (`ma_kh`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`tai_khoan`);

--
-- Chỉ mục cho bảng `khuyen_mai`
--
ALTER TABLE `khuyen_mai`
  ADD PRIMARY KEY (`makhuyenmai`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`ma_loai`);

--
-- Chỉ mục cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`ma_nv`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `banh`
--
ALTER TABLE `banh`
  ADD CONSTRAINT `fk_banh_loai` FOREIGN KEY (`ma_loai`) REFERENCES `loai` (`ma_loai`);

--
-- Các ràng buộc cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD CONSTRAINT `fk_bl_ctdh` FOREIGN KEY (`ma_bl`) REFERENCES `chitiet_dh` (`ma_banh`),
  ADD CONSTRAINT `fk_bl_nv` FOREIGN KEY (`ma_bl`) REFERENCES `nhan_vien` (`ma_nv`);

--
-- Các ràng buộc cho bảng `chitiet_dh`
--
ALTER TABLE `chitiet_dh`
  ADD CONSTRAINT `fk_ctdh_banh` FOREIGN KEY (`ma_banh`) REFERENCES `banh` (`ma_banh`),
  ADD CONSTRAINT `fk_ctdh_dh` FOREIGN KEY (`ma_dh`) REFERENCES `don_hang` (`ma_dh`);

--
-- Các ràng buộc cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD CONSTRAINT `fk_dh_kh` FOREIGN KEY (`ma_kh`) REFERENCES `khach_hang` (`tai_khoan`);

--
-- Các ràng buộc cho bảng `khuyen_mai`
--
ALTER TABLE `khuyen_mai`
  ADD CONSTRAINT `fk_km_banh` FOREIGN KEY (`makhuyenmai`) REFERENCES `banh` (`ma_banh`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
