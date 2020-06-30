-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 30, 2020 lúc 04:07 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `date_order` date NOT NULL,
  `total` double(8,2) NOT NULL,
  `payment` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `payment`, `note`, `created_at`, `updated_at`) VALUES
(11, 11, '2017-03-21', 420000.00, 'COD', 'Không ghi chú', NULL, NULL),
(12, 12, '2017-03-21', 520000.00, 'COD', 'Vui lòng chuyển đúng hạn', NULL, NULL),
(13, 13, '2017-03-21', 400000.00, 'ATM', 'Vui lòng giao hàng trước 5h', NULL, NULL),
(14, 14, '2017-03-23', 160000.00, 'COD', 'Không ghi chú', NULL, NULL),
(15, 15, '2017-03-24', 220000.00, 'COD', 'Không ghi chú', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_details`
--

CREATE TABLE `bill_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(11, 'A Rất Thị Loan', 'Nữ', 'loan.a@gmail.com', '101B Lê Hữu Trác', '925785752', 'Nothing', NULL, NULL),
(12, 'Nguyễn Duy Ngọc', 'Nam', 'ngoc.nguyen@gmail.com', '101B Lê Hữu Trác', '93654865', 'Giao hàng trước 4h', NULL, NULL),
(13, 'Nguyễn Văn Hùng', 'Nam', 'hung.nguyen@gmail.com', '101B Lê Hữu Trác', '8725655345', 'Giao hàng muộn', NULL, NULL),
(14, 'Nguyễn Thị Nguyệt', 'Nữ', 'nguyet.nguyen@gmail.com', '101B Lê Hữu Trác', '97235934759', 'Giao hàng trước 5h', NULL, NULL),
(15, 'Nguyễn Thị Yến Nhi', 'Nữ', 'nhi.nguyen@gmail.com', '101B Lê Hữu Trác', '0354236247', 'Nothing', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_type` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` double(8,2) NOT NULL,
  `promotion_price` double(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new` int(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `description`, `unit_price`, `promotion_price`, `image`, `unit`, `new`, `created_at`, `updated_at`) VALUES
(1, 'Bánh Crepe Sầu riêng', 5, 'Bánh crepe sầu riêng nhà làm', 150000.00, 120000.00, 'saurieng.jpg', 'hộp', 1, NULL, NULL),
(2, 'Bánh Crepe Chocolate', 6, 'Bánh crepe chocolate nhà làm', 180000.00, 160000.00, 'crepe-chocolate.jpg', 'hộp', 1, NULL, NULL),
(3, 'Bánh Crepe Sầu riêng - Chuối', 5, 'Bánh crepe chuối nhà làm', 150000.00, 120000.00, 'crepe-chuoi.jpg', 'hộp', 0, NULL, NULL),
(4, 'Bánh crepe đào', 5, 'Bánh crepe đào nhà làm', 160000.00, 0.00, 'crepe-dao.jpg', 'hộp', 0, NULL, NULL),
(5, 'Bánh Crepe Dâu', 5, 'Bánh crepe dâu nhà làm', 160000.00, 0.00, 'crepedau.jpg', 'hộp', 0, NULL, NULL),
(6, 'Bánh Crepe Pháp', 5, 'Bánh crepe pháp nhà làm', 200000.00, 180000.00, 'crepe-phap.jpg', 'hộp', 0, NULL, NULL),
(7, 'Bánh Crepe Táo', 5, '', 160000.00, 0.00, 'crepe-tao.jpg', 'hộp', 1, NULL, NULL),
(8, 'Bánh Crepe Trà xanh', 5, 'Bánh Crepe Trà xanh nhà làm', 160000.00, 150000.00, 'crepe-traxanh.jpg', 'hộp', 0, NULL, NULL),
(9, 'Bánh Crepe Sầu riêng và Dứa', 5, 'Bánh crepe sầu riêng và dứa nhà làm', 160000.00, 150000.00, 'saurieng-dua.jpg', 'hộp', 0, NULL, NULL),
(10, 'Bánh Gato Trái cây Việt Quất', 3, 'Bánh Gato Trái cây nhà làm', 250000.00, 0.00, '222.jpg', 'cái', 0, NULL, NULL),
(11, 'Bánh sinh nhật rau câu trái cây', 3, '', 200000.00, 180000.00, 'raucau.jpg', 'cái', 0, NULL, NULL),
(12, 'Bánh kem Chocolate Dâu', 3, '', 300000.00, 280000.00, 'banh kem sinh nhat.jpg', 'cái', 1, NULL, NULL),
(13, 'Bánh kem Dâu III', 3, '', 300000.00, 280000.00, 'banhkem-dau.jpg', 'cái', 0, NULL, NULL),
(14, 'Bánh kem Dâu I', 3, '', 320000.00, 300000.00, 'banhkem.jpg', 'cái', 1, NULL, NULL),
(15, 'Bánh trái cây II', 3, '', 150000.00, 120000.00, 'banhtraicay.jpg', 'hộp', 0, NULL, NULL),
(16, 'Apple Cake', 3, '', 250000.00, 240000.00, 'Fruit-Cake_7979.jpg', 'cái', 0, NULL, NULL),
(17, 'Bánh ngọt nhân cream táo', 2, '', 180000.00, 0.00, '333.jpg', 'hộp', 0, NULL, NULL),
(18, 'Bánh Chocolate Trái cây', 2, '', 150000.00, 0.00, 'Fruit-Cake_7976.jpg', 'hộp', 0, NULL, NULL),
(19, 'Bánh Chocolate Trái cây II', 2, '', 150000.00, 0.00, 'Fruit-Cake_7981.jpg', 'hộp', 0, NULL, NULL),
(20, 'Peach Cake', 2, '', 160000.00, 150000.00, 'Peach-Cake.jpg', 'cái', 0, NULL, NULL),
(21, 'Bánh bông lan trứng muối I', 1, '', 160000.00, 150000.00, 'banhbonglantrung.jpg', 'hộp', 1, NULL, NULL),
(22, 'Bánh bông lan trứng muối II', 1, '', 180000.00, 0.00, 'banhbonglantrungmuoi.jpg', 'hộp', 0, NULL, NULL),
(23, 'Bánh French', 1, '', 180000.00, 0.00, 'banhman.jpg', 'hộp', 0, NULL, NULL),
(24, 'Bánh mì Australia', 1, '', 80000.00, 70000.00, 'gato-khoaitay.jpg', 'hộp', 0, NULL, NULL),
(25, 'Bánh mặn thập cẩm', 1, '', 50000.00, 0.00, 'banh-mi-nhan-man.jpg', 'hộp', 0, NULL, NULL),
(26, 'Bánh Muffins trứng', 1, '', 100000.00, 80000.00, 'maxresdefault.jpg', 'hộp', 0, NULL, NULL),
(27, 'Bánh Scone Peach Cake', 1, 'Peach-Cake_3294', 120000.00, 0.00, 'saurieng.jpg', 'hộp', 1, NULL, NULL),
(28, 'Bánh mì Loaf I', 1, '', 100000.00, 0.00, 'sli12.jpg', 'hộp', 0, NULL, NULL),
(29, 'Bánh kem Chocolate Dâu I', 4, '', 380000.00, 350000.00, 'sli12.jpg', 'cái', 1, NULL, NULL),
(30, 'Bánh kem Trái cây I', 4, 'Bánh crepe sầu riêng nhà làm', 380000.00, 350000.00, 'Fruit-Cake.jpg', 'cái', 0, NULL, NULL),
(31, 'Bánh kem Trái cây II', 4, '', 380000.00, 350000.00, 'Fruit-Cake_7971.jpg', 'cái', 0, NULL, NULL),
(32, 'Bánh kem Doraemon', 4, '', 280000.00, 250000.00, 'banh74.jpg', 'cái', 1, NULL, NULL),
(33, 'Bánh kem Caramen Pudding', 4, '', 280000.00, 0.00, 'Caramen.jpg', 'cái', 1, NULL, NULL),
(34, 'Bánh kem Chocolate Fruit', 4, '', 320000.00, 300000.00, 'chocolate-fruit.jpg', 'cái', 1, NULL, NULL),
(35, 'Bánh kem Coffee Chocolate GH6', 4, '', 320000.00, 300000.00, 'coffee-chocolate.jpg', 'cái', 0, NULL, NULL),
(36, 'Bánh kem Mango Mouse', 4, '', 320000.00, 300000.00, 'mango-mousse-cake.jpg', 'cái', 1, NULL, NULL),
(37, 'Bánh kem Matcha Mouse', 4, '', 350000.00, 330000.00, 'MATCHA-MOUSSE.jpg', 'cái', 0, NULL, NULL),
(38, 'Bánh kem Flower Fruit', 4, 'Bánh crepe sầu riêng nhà làm', 350000.00, 330000.00, 'flower-fruits.jpg', 'cái', 0, NULL, NULL),
(39, 'Bánh kem Strawberry Delight', 4, '', 350000.00, 330000.00, 'strawberry.jpg', 'cái', 0, NULL, NULL),
(40, 'Bánh kem Raspberry Delight', 5, '', 350000.00, 330000.00, 'raspberry.jpg', 'cái', 0, NULL, NULL),
(41, 'Beefy Pizza', 6, 'Thịt bò xay, ngô, sốt BBQ, phô mai mozzarella', 150000.00, 130000.00, 'food_pizza.jpg', 'cái', 0, NULL, NULL),
(42, 'Hawaii Pizza', 6, 'Sốt cà chua, ham , dứa, pho mai mozzarella', 120000.00, 0.00, 'hawaiian-paradise.jpg', 'cái', 1, NULL, NULL),
(43, 'Smoke Chicken Pizza', 6, 'Gà hun khói,nấm, sốt cà chua, pho mai mozzarella', 120000.00, 0.00, 'chicken.jpg', 'cái', 0, NULL, NULL),
(44, 'Sausage Pizza', 6, 'Xúc xích klobasa, Nấm, Ngô, sốtcà chua, pho mai Mozzarella', 120000.00, 0.00, 'pizza-miami.jpg', 'cái', 0, NULL, NULL),
(45, 'Ocean Pizza', 6, 'Tôm , mực, xào cay,ớt xanh, hành tây, cà chua, phomai mozzarella', 120000.00, 0.00, 'seafood-curry.jpg', 'cái', 0, NULL, NULL),
(46, 'All Meaty Pizza', 6, 'Ham, bacon, chorizo, pho mai mozzarella', 140000.00, 0.00, 'all.jpg', 'cái', 0, NULL, NULL),
(47, 'Tuna Pizza', 6, 'Cá Ngừ, sốt Mayonnaise,sốt càchua, hành tây, pho mai Mozzarella', 140000.00, 0.00, 'germany-tuna.jpg', 'cái', 0, NULL, NULL),
(48, 'Bánh su kem nhân dừa', 7, '', 120000.00, 100000.00, 'maxresdefault.jpg', 'cái', 0, NULL, NULL),
(49, 'Bánh su kem sữa tươi', 7, 'Bánh crepe sầu riêng nhà làm', 120000.00, 100000.00, 'sukem.jpg', 'cái', 0, NULL, NULL),
(50, 'Bánh su kem sữa tươi chiên giòn', 7, '', 150000.00, 0.00, 'sukem-chien.jpg', 'hộp', 0, NULL, NULL),
(51, 'Bánh su kem dâu sữa tươi', 7, '', 150000.00, 0.00, 'sukemdau.jpg', 'hộp', 0, NULL, NULL),
(52, 'Bánh su kem bơ sữa tươi', 7, '', 150000.00, 0.00, 'su-singapo.jpg', 'hộp', 0, NULL, NULL),
(53, 'Bánh su kem nhân trái cây sữa tươi', 7, '', 150000.00, 0.00, 'foody-suque.jpg', 'hộp', 1, NULL, NULL),
(54, 'Bánh su kem cà phê', 7, '', 150000.00, 0.00, 'sukem-caphe.jpg', 'hộp', 0, NULL, NULL),
(55, 'Bánh su kem phô mai', 7, '', 150000.00, 0.00, 'suphomai.jpg', 'hộp', 0, NULL, NULL),
(56, 'Bánh su kem sữa tươi chocolate', 7, '', 150000.00, 0.00, 'sukem-combo.jpg', 'hộp', 1, NULL, NULL),
(57, 'Bánh Macaron Pháp', 2, 'Thưởng thức macaron, người ta có thể tìm thấy từ những hương vị truyền thống như mâm xôi, chocolate, cho đến những hương vị mới như nấm và trà xanh. Macaron với vị giòn tan của vỏ bánh, béo ngậy ngọt ngào của phần nhân, với vẻ ngoài đáng yêu và nhiều màu sắc đẹp mắt, đây là món bạn không nên bỏ qua khi khám phá nền ẩm thực Pháp', 200000.00, 180000.00, 'Marcaron9.jpg', 'hộp', 0, NULL, NULL),
(58, 'Bánh Tiramisu - Italia', 2, 'Chỉ cần cắn một miếng, bạn sẽ cảm nhận được tất cả các hương vị đó hòa quyện cùng một chính vì thế người ta còn ví món bánh này là Thiên đường trong miệng của bạn', 250000.00, 220000.00, '234.jpg', 'cái', 0, NULL, NULL),
(59, 'Bánh Táo - Mỹ', 2, 'Bánh táo Mỹ với phần vỏ bánh mỏng, giòn mềm, ẩn chứa phần nhân táo thơm ngọt, điểm chút vị chua dịu của trái cây quả sẽ là một lựa chọn hoàn hảo cho những tín đồ bánh ngọt trên toàn thế giới', 200000.00, 0.00, '1234.jpg', 'hộp', 0, NULL, NULL),
(60, 'Bánh Cupcake - Anh Quốc', 6, 'Những chiếc cupcake có cấu tạo gồm phần vỏ bánh xốp mịn và phần kem trang trí bên trên rất bắt mắt với nhiều hình dạng và màu sắc khác nhau. Cupcake còn được cho là chiếc bánh mang lại niềm vui và tiếng cười như chính hình dáng đáng yêu của chúng', 150000.00, 120000.00, 'cupcake.jpg', 'cái', 1, NULL, NULL),
(61, 'Bánh Crepe Sầu riêng', 6, 'Sachertorte là một loại bánh xốp được tạo ra bởi loại&nbsp;chocholate&nbsp;tuyệt hảo nhất của nước Áo. Sachertorte có vị ngọt nhẹ, gồm nhiều lớp bánh được làm từ ruột bánh mì và bánh sữa chocholate, xen lẫn giữa các lớp bánh là mứt mơ. Món bánh chocholate này nổi tiếng tới mức thành phố Vienna của Áo đã ấn định&nbsp;tổ chức một ngày Sachertorte quốc gia, vào 5/12 hằng năm', 250000.00, 220000.00, '111.jpg', 'cái', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'banner1.jpg', 'nothing', NULL, NULL),
(2, 'banner2.jpg', 'nothing', NULL, NULL),
(3, 'banner3.jpg', 'nothing', NULL, NULL),
(4, 'banner4.jpg', 'nothing', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

CREATE TABLE `type_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Bánh mặn', 'Nếu từng bị mê hoặc bởi các loại tarlet ngọt thì chắn chắn bạn không thể bỏ qua những loại tarlet mặn. Ngoài hình dáng bắt mắt, lớp vở bánh giòn giòn cùng với nhân mặn như thịt gà, nấm, thị heo ,… của bánh sẽ chinh phục bất cứ ai dùng thử', 'banhman.jpg', NULL, NULL),
(2, 'Bánh ngọt', 'Bánh ngọt là một loại thức ăn thường dưới hình thức món bánh dạng bánh mì từ bột nhào, được nướng lên dùng để tráng miệng. Bánh ngọt có nhiều loại, có thể phân loại dựa theo nguyên liệu và kỹ thuật chế biến như bánh ngọt làm từ lúa mì, bơ, bánh ngọt dạng bọt biển. Bánh ngọt có thể phục vụ những mục đính đặc biệt như bánh cưới, bánh sinh nhật, bánh Giáng sinh, bánh Halloween..', '333.jpg', NULL, NULL),
(3, 'Bánh trái cây', 'Bánh trái cây, hay còn gọi là bánh hoa quả, là một món ăn chơi, không riêng gì của Huế nhưng khi \"lạc\" vào mảnh đất Cố đô, món bánh này dường như cũng mang chút tinh tế, cầu kỳ và đặc biệt. Lấy cảm hứng từ những loại trái cây trong vườn, qua bàn tay khéo léo của người phụ nữ Huế, món bánh trái cây ra đời - ngọt thơm, dịu nhẹ làm đẹp lòng biết bao người thưởng thức', 'banhtraicay.jpg', NULL, NULL),
(4, 'Bánh kem', 'Với người Việt Nam thì bánh ngọt nói chung đều hay được quy về bánh bông lan – một loại tráng miệng bông xốp, ăn không hoặc được phủ kem lên thành bánh kem. Tuy nhiên, cốt bánh kem thực ra có rất nhiều loại với hương vị, kết cấu và phương thức làm khác nhau chứ không chỉ đơn giản là “bánh bông lan” chung chung đâu nhé!', 'banhkem.jpg', NULL, NULL),
(5, 'Bánh crepe', 'Crepe là một món bánh nổi tiếng của Pháp, nhưng từ khi du nhập vào Việt Nam món bánh đẹp mắt, ngon miệng này đã làm cho biết bao bạn trẻ phải “xiêu lòng', 'crepedau.jpg', NULL, NULL),
(6, 'Bánh pizza', 'Pizza đã không chỉ còn là một món ăn được ưa chuộng khắp thế giới mà còn được những nhà cầm quyền EU chứng nhận là một phần di sản văn hóa ẩm thực châu Âu. Và để được chứng nhận là một nhà sản xuất pizza không hề đơn giản. Người ta phải qua đủ mọi các bước xét duyệt của chính phủ Ý và liên minh châu Âu nữa… tất cả là để đảm bảo danh tiếng cho món ăn này', 'pizza.jpg', NULL, NULL),
(7, 'Bánh su kem', 'Bánh su kem là món bánh ngọt ở dạng kem được làm từ các nguyên liệu như bột mì, trứng, sữa, bơ.... đánh đều tạo thành một hỗn hợp và sau đó bằng thao tác ép và phun qua một cái túi để định hình thành những bánh nhỏ và cuối cùng được nướng chín. Bánh su kem có thể thêm thành phần Sô cô la để tăng vị hấp dẫn. Bánh có xuất xứ từ nước Pháp', 'sukemdau.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Nguyễn Thị Yến Nhi', 'nhi.nguyen@gmail.com', '060520', 'null', NULL, NULL),
(7, 'Nguyễn Thị Nguyệt', 'nguyet.nguyen@gmail.com', '110620', 'null', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_id_customer_foreign` (`id_customer`);

--
-- Chỉ mục cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_details_id_bill_foreign` (`id_bill`),
  ADD KEY `bill_details_id_product_foreign` (`id_product`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_type_foreign` (`id_type`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_id_customer_foreign` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  ADD CONSTRAINT `bill_details_id_bill_foreign` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bill_details_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
