-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2024 at 04:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tim_phong_tro_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `baiviet`
--

CREATE TABLE `baiviet` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(11) NOT NULL DEFAULT 0,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anhdaidien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `baiviet`
--

INSERT INTO `baiviet` (`id`, `menu_id`, `ten`, `slug`, `mota`, `anhdaidien`, `noidung`, `created_at`, `updated_at`) VALUES
(6, 0, 'Kinh nghiệm tìm thuê phòng trọ mà bạn nên biết', 'kinh-nghiem-tim-thue-phong-tro-ma-ban-nen-biet', 'Tuy nhiên việc tìm phòng trọ như thế nào cho hiệu quả và đỡ chi phí, công sức, thời gian nhất, đồng thời quan trọng hơn là không bị mất oan một số tiền lớn vào bọn lừa đảo thì không phải ai trong chúng ta cũng biết.', '2024-04-04__cantho-hostel-5.jpg', '<figure class=\"image\"><img src=\"https://media.licdn.com/dms/image/D4D12AQEiwNpsMUkMtg/article-cover_image-shrink_600_2000/0/1654226031141?e=2147483647&amp;v=beta&amp;t=er-TGnzxyZxLLJjkj56zjJMRm3rK-5zNhTt7jxAcr74\" alt=\"Kinh nghiệm tìm thuê phòng trọ mà bạn nên biết\"></figure><h2>Thuê phòng trọ xung quanh khu vực trường học</h2><p>Việc <a href=\"https://phongtro123.com/cho-thue-phong-tro\"><strong>thuê phòng trọ</strong></a> gần trường học sẽ giúp sinh viên tiết kiệm thời gian và công sức đi lại. Sinh viên không cần phải lo lắng về việc tắc đường, tìm chỗ gửi xe, hay bắt xe bus, đặc biệt là vào giờ cao điểm. Điều này sẽ giúp các bạn sinh viên tiết kiệm được kha khá chi phí cho việc di chuyển.</p><p>Hơn nữa, khu vực xung quanh trường học thường có đầy đủ các tiện ích như cửa hàng tạp hóa, quán ăn, quán cà phê,... giúp sinh viên dễ dàng mua sắm, ăn uống, giải trí. Bên cạnh đó, khu vực này cũng có hệ thống an ninh tốt hơn, giúp sinh viên an tâm hơn khi ở một mình. Mặt khác, khi bạn ở trường, bạn sẽ dễ dàng tham gia các hoạt động ngoại khóa cũng như có cơ hội gặp gỡ và giao lưu với nhiều bạn bè mới.</p><p>Tuy nhiên, do nhu cầu cao nên giá thuê phòng trọ gần khu vực trường học thường cao hơn so với khu vực khác. Sinh viên cần cân nhắc kỹ lưỡng khả năng tài chính của mình trước khi lựa chọn. Ngoài ra, nhiều chủ nhà trọ không quá quan tâm đến chất lượng phòng trọ, gây ảnh hưởng đến sinh hoạt hàng ngày của sinh viên.</p><h2>Tham khảo giá phòng trọ kỹ lưỡng trước khi thuê</h2><p>Để giúp bạn tránh tình trạng bị chủ nhà ép giá cao, bạn nên khảo sát giá phòng trọ trước khi quyết định thuê phòng. Vậy khảo sát bằng cách nào?</p><p>Trước khi bắt đầu khảo giá, bạn cần xác định rõ nhu cầu và khả năng tài chính của bản thân. Điều này sẽ giúp bạn tập trung vào những căn phòng có giá cả phù hợp với nhu cầu và điều kiện của mình.</p><p>Về nhu cầu, bạn cần xác định rõ diện tích phòng, số lượng phòng ngủ, phòng tắm, vị trí, tiện ích,... mà bạn mong muốn. Về khả năng tài chính, bạn cần tính toán xem mình có thể chi trả bao nhiêu tiền cho tiền nhà mỗi tháng.</p><p>Sau đó, bạn có thể tham khảo giá thuê phòng trọ tại các trang web đăng tin như Phongtro123.com, Nhatot.com, Mogi.vn,... Tham gia vào các hội nhóm phòng trọ sinh viên trên Facebook, Zalo,... hoặc hỏi thăm trực tiếp bạn bè và người thân đã từng thuê phòng trọ. Điều này sẽ giúp bạn có cái nhìn tổng quan về mặt bằng giá của thị trường.</p><p>Sau khi đã có của 3 đến 4 căn trọ, bạn nên dành thời gian đi khảo giá trực tiếp tại nhiều địa điểm khác nhau. Qua đó sẽ giúp bạn có cái nhìn thực tế hơn về chất lượng phòng trọ và giá cả.</p><p>Cuối cùng, khi đã tìm được căn phòng ưng ý, bạn nên thỏa thuận giá cả với chủ nhà. Bạn có thể tham khảo giá cả của các căn phòng trọ khác trong khu vực để có cơ sở đàm phán với chủ nhà.</p><h2>Ký túc xá là lựa chọn tốt nhất dành cho sinh viên</h2><p>Ký túc xá là một hình thức nhà ở dành cho sinh viên, được xây dựng và quản lý bởi các trường đại học, cao đẳng. Vậy, tại sao nói ký túc xá là lựa chọn tốt nhất dành cho sinh viên?</p><p>Thứ nhất, chi phí thuê ký túc xá thường rẻ hơn nhiều so với thuê nhà trọ bên ngoài. Đặc biệt là đối với sinh viên năm nhất, chưa có kinh nghiệm đi làm thêm. Điều này giúp sinh viên giảm bớt gánh nặng tài chính, tập trung cho việc học tập.</p><p>Thứ hai, ký túc xá được quản lý chặt chẽ bởi nhà trường, đảm bảo an ninh, an toàn cho sinh viên. Đây là một yếu tố quan trọng, nhất là đối với những sinh viên mới lên thành phố, chưa quen với môi trường sống mới.</p><p>Thứ ba, ký túc xá thường được xây dựng ngay trong khuôn viên trường học hoặc gần trường học, giúp sinh viên thuận tiện trong việc đi lại, học tập.</p><p>Thứ tư, sinh viên sống trong ký túc xá sẽ có cơ hội kết bạn với nhiều bạn bè cùng trường, cùng ngành học, đến từ nhiều vùng miền khác nhau. Đây là một cơ hội quý giá để sinh viên mở rộng mối quan hệ, học hỏi thêm những điều mới mẻ.</p><p>Cuối cùng, sinh viên sống trong ký túc xá sẽ được rèn luyện nhiều kỹ năng sống. Ví dụ như tự chăm sóc bản thân, quản lý thời gian, sống chung với người khác, giải quyết mâu thuẫn,... Đây là những kỹ năng cần thiết giúp sinh viên trưởng thành, tự lập hơn.</p><h2>Chọn vị trí&nbsp;phòng trọ gần các tuyến xe bus</h2><p>Vị trí thuê phòng gần các tuyến xe bus là một lựa chọn lý tưởng cho sinh viên mới chuyển đến thành phố. Khi chưa thông thạo về đường phố nơi mình học, việc sử dụng phương tiện xe bus công cộng sẽ giúp bạn tiết kiệm chi phí và thời gian di chuyển.</p><p>Tại thành phố Hồ Chí Minh, có rất nhiều tuyến xe bus đi qua các khu vực trung tâm thành phố, các trường đại học, cao đẳng, khu dân cư,... Bạn có thể tham khảo bản đồ tuyến xe bus của thành phố để lựa chọn vị trí thuê phòng phù hợp. Hơn nữa, bạn có thể đăng ký vé tháng xe bus dành cho sinh viên chỉ với 100.000 đồng/tháng. Qua đó có thể lên bất kỳ tuyến xe bus nào và đi tới bất cứ nơi đâu trong thành phố.</p><h2>Khu vực&nbsp;thuê phòng trọ đủ tiện ích</h2><p>Vị trí là một trong những yếu tố quan trọng khi tìm phòng trọ mà sinh viên cần cân nhắc. Dưới đây là một số tiêu chí mà sinh viên cần lưu ý khi tìm phòng trọ:</p><p>- Gần trường học: Vị trí thuê trọ gần trường học sẽ giúp sinh viên tiết kiệm thời gian và chi phí di chuyển, từ đó có thể tập trung hơn cho việc học tập.</p><p>- Gần các tiện ích: Ngoài trường học, sinh viên cũng cần quan tâm đến các tiện ích xung quanh khu vực thuê trọ, chẳng hạn như chợ, siêu thị, bệnh viện, nhà hàng, quán ăn,... Các tiện ích này sẽ giúp sinh viên thuận tiện cho việc sinh hoạt hàng ngày.</p><p>- An ninh: Vấn đề an ninh là một trong những mối quan tâm hàng đầu của sinh viên khi thuê trọ. Sinh viên nên lựa chọn những khu vực có hệ thống an ninh tốt, đảm bảo an toàn cho bản thân và tài sản.</p><p>- Môi trường sống: Sinh viên cũng nên quan tâm đến môi trường sống xung quanh khu vực thuê trọ. Một môi trường sống sạch sẽ, thoáng mát sẽ giúp sinh viên cảm thấy thoải mái và dễ chịu hơn.</p><h2>Đọc kỹ trước khi ký hợp đồng thuê phòng</h2><p>Khi thuê phòng trọ, nhất thiết cần phải có <a href=\"https://phongtro123.com/news/hop-dong-thue-nha-tro-phong-tro\"><strong>hợp đồng thuê phòng trọ</strong></a> gồm 2 bản được 2 bên xác nhận và mỗi bên giữ 1 bản.</p><p>Trước khi ký vào bản hợp đồng đó, bạn cần đọc kỹ các điều khoản của hợp đồng về quyền lợi, trách nhiệm cũng như giá thuê phòng trọ, tiền đặt cọc, giá điện nước cùng các dịch vụ internet, vệ sinh khác. Việc đọc kỹ hợp đồng thuê phòng trước khi ký sẽ giúp bạn hiểu rõ quyền lợi và nghĩa vụ của mình, tránh được những rủi ro không đáng có trong quá trình thuê nhà.</p><h2>Kiểm tra tình trạng nhà trọ trước khi chuyển đến</h2><p>Trước khi chuyển đến ở, bạn cần kiểm tra kỹ lưỡng hệ thống điện, đường ống nước và các thiết bị trong phòng. Nếu có sự cố gì, bạn nên yêu cầu chủ nhà nhanh chóng sửa chữa và thay thế. Dưới đây là một số lưu ý khi kiểm tra nhà trọ:</p><p>- Nên kiểm tra nhà trọ vào ban ngày, khi có đủ ánh sáng để bạn có thể quan sát kỹ mọi ngóc ngách trong phòng.</p><p>- Nên đi cùng người thân hoặc bạn bè để có thêm ý kiến và đánh giá kỹ hơn.</p><p>- Các hạng mục cần kiểm tra như vị trí, kích thước, cấu trúc, thiết bị và an ninh.</p><h2>Tìm hiểu kỹ giá dịch vụ phòng trọ</h2><p>Trong thương thảo hợp đồng, bạn cần chắc chắn tiền điện, nước và các dịch vụ khác là như nhau và không thay đổi theo thời gian nhất định.</p><p>Tốt nhất là bạn nên yêu cầu mỗi phòng có một đồng hồ đo điện, nước riêng để tránh trường hợp bị câu trộm điện, nước. Đồng thời, bạn cũng nên hỏi hàng xóm về tiền điện, nước của các phòng tương quan với vật dụng trong phòng của mình để xem xét liệu tiền điện, nước của mình có bị cao quá không. Nếu trường hợp bị cao lên bất ngờ thì bạn nên yêu cầu xem xét lại.</p><h2>Tìm bạn ở ghép phòng trọ đáng tin cậy</h2><p>Có thể nhiều bạn khi tìm được phòng phù hợp nhưng một mình không thể chi trả được tất cả các khoản tiền và bạn cần <a href=\"https://phongtro123.com/tim-nguoi-o-ghep\"><strong>tìm người ở ghép</strong></a>.</p><p>Lúc này, bạn nên liên hệ với bạn bè và người thân để tìm người có cùng nhu cầu. Với những người này, bạn sẽ cảm thấy yên tâm hơn vì bạn đã có những thông tin cụ thể của đối phương đồng thời cũng đã hiểu về họ cũng như cách sống của họ.</p><p>Trong trường hợp, bạn không tìm được ai như thế, bạn có thể đăng tìm người ở ghép trên website <a href=\"https://phongtro123.com/\">https://phongtro123.com</a>. Hoặc bạn cũng có thể dán tờ rơi để tìm người ở cùng nhé. Tuy nhiên bạn hết sức lưu ý trong việc chọn người ở ghép cùng kiểu này và cẩn thận với những tài sản giá trị của mình, khi mà chưa rõ về người bạn cùng phòng đó.</p><h2>Có nên thuê phòng trọ ở chung với nhà chủ hay không?</h2><p>Đây là câu hỏi mà không ít người thắc mắc. Việc bạn ở chung với nhà chủ có những ưu điểm và hạn chế nhất định. Tuy nhiên, nếu bạn là sinh viên năm nhất và bạn là con gái thì nên ở cùng nhà chủ bạn nhé.</p><p>Việc ở cùng nhà chủ giúp bạn đảm bảo an ninh tốt hơn, yên tĩnh hơn để bạn có thể tập trung học tập. Đồng thời, sự hạn chế trong giờ đóng cửa mỗi tối là cách để bạn trở về nhà sớm hơn và đảm bảo an toàn cho bản thân mình.</p><p>Nhìn chung, việc thuê phòng trọ ở chung với nhà chủ có thể mang lại nhiều lợi ích, nhưng cũng có thể gặp phải một số bất tiện. Cụ thể như:</p><p>- Khi ở chung với nhà chủ, bạn có thể bị dòm ngó và ý kiến về cách sống của mình.</p><p>- Một số chủ trọ có thể quy định giờ giấc sinh hoạt của người thuê trọ.</p><p>- So với thuê phòng trọ không chung chủ, thuê phòng trọ ở chung chủ thường có chi phí cao hơn.</p><p>Trên đây là một số lưu ý nhỏ dành cho sinh viên khi thuê phòng trọ. Hi vọng những thông tin này sẽ giúp bạn có thêm nhiều kinh nghiệm và hiểu biết để có thể tìm được phòng trọ như ý cho bản thân, tránh những cạm bẫy từ bên ngoài.</p>', '2024-04-03 18:36:01', '2024-04-03 18:37:34'),
(7, 0, 'Chú ý 9 kinh nghiệm tìm thuê nhà trọ bạn nhất định phải lưu ý', 'chu-y-9-kinh-nghiem-tim-thue-nha-tro-ban-nhat-dinh-phai-luu-y', 'Thuê nhà trọ - phòng trọ là mối quan tâm của rất nhiều sinh viên, người lao động xa quê tìm đến các thành phố để học tập, làm việc.', '2024-04-16__cantho-hostel-3.png', '<p>Thuê nhà trọ - phòng trọ là mối quan tâm của rất nhiều sinh viên, người lao động xa quê tìm đến các thành phố để học tập, làm việc. Tuy nhiên để tìm thuê nhà trọ - phòng trọ giá rẻ, sạch sẽ như ý muốn là điều không phải đơn giản. Hiện nay trên các trang mạng facebook, zalo...thường xuất hiện nhiều chia sẻ về việc bị lừa đảo trong khi tìm thuê nhà trọ - phòng trọ. Điều này thật đáng lo ngại.&nbsp;</p><p>Để đề phòng những trường hợp bị lừa đảo và tìm được nơi ở an ninh, giá cả hợp lý, các kinh nghiệm tìm thuê nhà trọ dưới đây sẽ giúp ích cho bạn.</p><p><img src=\"https://taxitaisaigon.vn/upload/files/thue-nha-tro.jpg\" alt=\"kinh-nghiem-thue-nha-tro\"></p><h2><strong>1. CÁC CÁCH TÌM THUÊ NHÀ TRỌ NHANH VÀ AN TOÀN NHẤT</strong></h2><h3><strong>1.1 Tìm gián tiếp qua mạng</strong></h3><p>Internet ngày càng phát triển. Giờ đây bạn chỉ cần gõ mong muốn tìm nhà trọ vào công cụ tìm kiếm thông minh <a href=\"https://www.google.com/\"><strong>Google</strong></a> thì hàng trăm, thậm chí hàng ngàn kết quả hiện ra để bạn chọn lựa. Tuy đây là cách nhanh nhất nhưng cũng chứa đựng rủi ro cao nhất. Vì vậy bạn cần phải có kinh nghiệm tìm phòng thuê phòng trọ khi sử dụng cách này. Lưu ý:&nbsp;</p><p>+ Thứ nhất phải biết chọn lọc các thông tin vì 95% thông tin hiển thị về cho thuê nhà trọ đều là của nhà môi giới đăng.</p><p>+ Thứ hai bạn cần xem thời gian đăng bài cho thuê nhà trọ trên trang đã bao lâu. Nên chọn tin cho thuê nhà trọ mới đăng trong vòng 1 tháng, đây là các tin mới nên khả năng tìm được nhà trọ sẽ cao hơn.&nbsp;</p><p>+ Thứ ba cần xem các thông tin người cho thuê thật kỹ càng, để biết được là người cho thuê nhà trọ thật sự hay là công ty môi giới.</p><p>+ Thứ tư, theo kinh nghiệm thuê nhà trọ của nhiều người chia sẻ, những tin có hình ảnh thật của căn nhà trọ sẽ đáng tin hơn.</p><p>Ngoài Google thì bạn cũng có thể tìm kiếm ở facebook (trên các nhóm tìm nhà trọ). Tại đây các chủ trọ sẽ đăng tin cho thuê nhà, kèm theo thông tin, hình ảnh cụ thể. Bạn chỉ cần comment, inbox thì chủ nhà sẽ chủ động phản hồi lại cho bạn. Cũng đừng quên vào trang cá nhân của họ để tìm hiểu xem họ là người như thế nào, là tài khoản thật hay ảo.&nbsp;</p><p>Tuy nhiên, đừng quá tin tưởng việc tìm phòng trọ qua các thông tin trên mạng. Gợi ý hay nhất là bạn nên kết hợp với tham quan trực tiếp.</p><p>Bạn chỉ cần lập một danh sách các phòng trọ lý tưởng, sau đó đến tận nơi để xem xét!</p><p><img src=\"https://taxitaisaigon.vn/upload/files/tim-kiem-nha-tren-mang.jpg\" alt=\"tim-kiem-nha-tren-mang\"></p><h3><strong>1.2 Tìm phòng trọ trực tiếp</strong></h3><p>Tìm phòng trọ trực tiếp cũng là một cách khá hay. Bởi bạn sẽ chủ động hơn, có cách nhìn trực quan. Lưu ý những kinh nghiệm tìm thuê nhà trọ trực tiếp sau đây:</p><p>+ Điều đầu tiên bạn cần xác định khu vực mà bạn muốn thuê trọ. Sau đó tìm nhà trọ lần lượt các ngõ, hẻm với các phương tiện dễ dàng di chuyển như xe đạp, xe máy hoặc là đi bộ. Nếu đi xe thì nên có 2 người. Một người vào phòng trọ xem xét, người còn lại có thể trông xe.&nbsp;</p><p>+ Hiện nay các nơi cho thuê nhà trọ, phòng trọ đều treo bảng trước nhà, trước cổng. Đối với các trường hợp này, bạn nên hỏi trước xem có phải chính chủ không trước khi vào xem.</p><p>+ Kinh nghiệm thuê nhà trọ đặt biệt quan trọng đó chính là hỏi người dân khu vực xung quanh xem có nhà trọ nào đang cho thuê không? Họ sẽ gợi ý cho bạn những thông tin chính xác về việc tìm nhà trọ, giúp bạn tiết kiệm thời gian tìm kiếm.</p><p>Chú ý khi xem phòng, bạn cần hỏi các thông tin cụ thể như: diện tích phòng, giá thuê phòng, tiền điện nước tính thế nào?...</p><p>Hiện nay có rất nhiều trung tâm môi giới nhà trọ, phòng trọ. Bạn cũng có thể nhờ họ tìm kiếm các phòng trọ phù hợp với tiêu chí của bạn đặt ra. Tuy nhiên bạn phải trả một số tiền cho nhà môi giới khi bạn đồng ý thuê nhà mà họ đã giới thiệu cho bạn.&nbsp;</p><p><img src=\"https://taxitaisaigon.vn/upload/files/tim-nha-tro-truc-tiep.jpg\" alt=\"tim-nha-tro-truc-tiep\"></p><h3><strong>1.3 Nhờ người quen, bạn bè&nbsp;</strong></h3><p>Đây là cách tưởng như đơn giản nhất nhưng lại là cách tìm phòng trọ tốt và hiệu quả nhất. Nếu người quen, bạn bè của bạn đang ở trong khu vực bạn muốn thuê trọ, hãy nhờ họ dò hỏi trước tình hình.</p><p>Họ sẽ biết nhiều thông tin bổ ích cho bạn như an ninh, giá cả có đắt quá so với nhà trọ khác không. Bạn cũng nên nhờ họ đi xem nhà với bạn để việc tìm địa chỉ nhà trọ nhanh hơn. Bên cạnh đó, nếu bạn đồng ý với nhà trọ người quen, bạn bè giới thiệu thì việc ký kết hợp đồng cũng sẽ nhanh hơn.</p><p>Nếu bạn là sinh viên, thì đừng ngại liên hệ các anh chị khóa trên hoặc trung tâm hỗ trợ sinh viên để được giúp đỡ trong vấn đề này.&nbsp;</p><p><img src=\"https://taxitaisaigon.vn/upload/files/tim-truc-tiep.jpg\" alt=\"nho-nguoi-than-ban-be\"></p><h2><strong>2. CÁC KINH NGHIỆM KHI TÌM NHÀ TRỌ - PHÒNG TRỌ</strong></h2><p>Trước khi bạn đi <strong>tìm trọ</strong> phải xác định các tiêu chí phòng trọ mà bạn muốn tìm và mức giá mà có thể bỏ ra để thuê trọ. Các tiêu chí bạn đặt ra cần phải rõ ràng và hợp lý. Dưới đây là một số gợi ý cho bạn:</p><h3><strong>2.1 Xác định khu vực thuê trọ</strong></h3><p>Khi tìm phòng trọ<strong> </strong>nên xác định khu vực bạn định thuê trọ. Đầu tiên hãy ưu tiên những vị trí thuận tiện cho việc học tập, làm việc của bạn nhất. Nhà trọ gần nơi học, nơi làm sẽ giúp bạn tiết kiệm thời gian di chuyển cũng như tiền xăng xe. Xét về lâu dài sẽ có lợi hơn so với thuê nhà giá rẻ mà khoảng cách quá xa.</p><p>Cũng cần lưu ý xem các tuyến đường di chuyển có dễ lưu thông không hay luôn trong trạng thái kẹt xe. Chắc chắn bạn không muốn mỗi ngày phải mất hàng giờ nhích từng chút một trong dòng người kẹt xe và hít đầy khói bụi, đúng không?</p><p>Tiếp đến bạn nên chọn khu vực đông dân cư, gần chợ và bệnh viện thì càng tốt. Bên cạnh đó cũng hãy quan tâm tìm hiểu xem khu vực này có thường bị ngập khi trời mưa không.</p><p>Ngoài ra không nên <strong>tìm nhà trọ</strong> nơi quá hẻo lánh và không có tính an ninh cao.</p><p>Bạn tham khảo thêm bài viết sau<strong> </strong><a href=\"https://taxitaisaigon.vn/bai-viet-chi-tiet/cac-khu-vuc-tap-trung-nhieu-nha-tro-gia-re-tai-sai-gon-771\"><strong>[Gợi ý] Các khu vực tập trung nhà trọ giá rẻ tại 24 quận huyện</strong></a><strong>.&nbsp;</strong></p><p><img src=\"https://taxitaisaigon.vn/upload/files/xac-dinh-vi.jpg\" alt=\"xac-dinh-vi-tri\"></p><h3><strong>2.2 Các loại phí khi thuê nhà trọ, phòng trọ</strong></h3><p><strong>Giá thuê phòng trọ, nhà trọ</strong></p><p>Giá cả là yếu tố quan trọng ảnh hưởng tới quyết định thuê nhà trọ - phòng trọ của bạn. Thị trường giá cả phòng trọ hiện nay rất đa dạng, tùy vào kích thước, không gian nhà trọ mà có những mức giá tương đương. Những phòng trọ đầy đủ tiện nghi và rộng rãi thì thường đòi hỏi mức giá cao hơn so các phòng nhỏ hẹp.</p><p>Tầm giá thuê phòng trọ bình dân hiện nay thường trong khoảng 1.000.000đ - 4.000.000đ, tùy diện tích, tiện nghi và vị trí.&nbsp;</p><p>Bên cạnh giá cả phòng thuê bạn cũng cần chú ý đến giá tiền điện, tiền nước, phí gửi xe, tiền wifi, vệ sinh, ... Mọi thứ cần thật rõ ràng với chủ trọ ngay từ đầu, tránh những tranh chấp về sau. Có nhiều trường hợp chủ trọ báo giá thuê nhà rất rẻ, nhưng khi tới ở thì mới tá hỏa có nhiều chi phí phát sinh với giá “sốc”.&nbsp;</p><p><img src=\"https://taxitaisaigon.vn/upload/files/chi-phi-thue-nha.jpg\" alt=\"chi-phi-thue-nha\"></p><p><strong>Tiền cọc&nbsp;</strong></p><p>Khi thuê phòng trọ thường thì bạn cần đặt cọc tiền. Thông thường sẽ bằng 1 - 2 tháng tiền trọ, nhưng tốt nhất chỉ nên là 1 tháng. Hãy cảnh giác với những nơi hối thúc bạn đặt tiền cọc khi chưa ký hợp đồng, hoặc đòi hỏi số tiền cọc quá lớn.&nbsp;&nbsp;</p><p><img src=\"https://taxitaisaigon.vn/upload/files/tien-coc.jpg\" alt=\"tien-coc\"></p><p><strong>Tiền điện&nbsp;</strong></p><p>Hiện nay giá điện cho người thuê nhà trọ - phòng trọ được quy định theo thông tư 25/2018/TT - BCT và <strong>Quyết định 4495/QĐ-BCT</strong>, cụ thể:&nbsp;</p><p>Có 6 mức giá điện hiện hành là 1.549, 1.600, 1.858, 2.340, 2,615, 2.701đồng/ kwh tương ứng lần lượt với 6 bậc sử dụng (đối với người thuê trọ trên 12 tháng và có đăng ký tạm trú). Riêng đối với trường hợp người thuê trọ dưới 12 tháng và chưa kê khai đủ lượng người dùng điện thì tính giá bán lẻ điện sinh hoạt của bậc thang thứ 3 là 1.858 đồng/kwh chưa thuế GTGT.</p><p>Do đó, nếu những nơi tính tiền điện quá cao, bạn cần cân nhắc và tìm hiểu thêm tránh bị mất tiền oan. Pháp luật cũng cũng quy định, nếu chủ nhà thu tiền điện cao trái pháp luật sẽ bị phạt nặng, lên đến 10.000.000 đ.&nbsp;</p><p><img src=\"https://taxitaisaigon.vn/upload/files/tien-dien.jpg\" alt=\"tien-dien\"></p><p><strong>Tiền nước</strong></p><p>Khác với giá tiền điện, giá tiền nước của người thuê trọ được áp dụng theo quy định riêng của từng địa phương. Sau đây là hai cách tính tiền điện nước của TP.HCM và Hà Nội:</p><h3><strong>- Cách tính tiền nước ở TP Hồ Chí Minh</strong></h3><p>Theo Quyết định 103/2009/QĐ-UBND, người thuê nhà tại TP.HCM có thời hạn thuê từ 12 tháng trở lên, sẽ được áp dụng giá nước sạch sinh hoạt như sau:</p><p>Nhỏ hơn hoặc bằng 4m3/người/tháng: 5.300 đồng/m3</p><p>Từ trên 4m3 đến 6m3/người/tháng: 10.200 đồng/m3</p><p>Từ trên 6m3/người/tháng: 11.400 đồng/m3</p><h3><strong>- Cách tính tiền nước ở Hà Nội</strong></h3><p>Tại Hà Nội, theo Quyết định 38/2013/QĐ-UBND, đối với hợp đồng thuê trọ từ 12 tháng trở lên thì có mức giá nước sạch như sau: (cứ 04 người được tính là một hộ)</p><p>10 m3 đầu tiên: 5.973 đồng/m3</p><p>Từ trên 10m3 đến 20m3: 7.052 đồng/m3</p><p>Từ trên 20m3 đến 30m3: 8.669 đồng/m3</p><p>Trên 30m3: 15.929 đồng/m3</p><p><img src=\"https://taxitaisaigon.vn/upload/files/tien-nuoc.jpg\" alt=\"tien-nuoc\"></p><p><strong>Giá wifi</strong></p><p>Quá trình học tập và làm việc hiện nay đặc biệt cần sử dụng wifi. Do đó bạn cần lưu ý hỏi kỹ về cách thức cũng như giá sử dụng wifi.</p><p>Nhiều nhà trọ có hệ thống wifi miễn phí, nhưng bạn cần đảm bảo đường truyền ổn định. Nếu wifi miễn phí nhưng lại quá yếu sẽ khiến bạn bị ức chế. Còn nếu tính phí thì tầm giá dao động từ <strong>50.000-200.000/phòng</strong>.</p><p><img src=\"https://taxitaisaigon.vn/upload/files/tien-internet.jpg\" alt=\"tien-internet\"></p><p><strong>Giá giữ xe</strong></p><p>Khi thuê phòng bạn cần đặc biệt lưu ý về vị trí cũng như giá tiền giữ xe. Một vài nơi sẽ có cổng chung, bạn đỗ xe phía trước cửa phòng và tự xích khóa. Trường hợp này sẽ không tốn phí. Còn nếu có bãi xe riêng thì giá giữ xe theo tháng hợp lý sẽ không quá <strong>150.000đ.</strong>&nbsp;&nbsp;</p><p><strong>Giá vệ sinh chung</strong></p><p>Được xem là chi phí cho việc đổ rác, vệ sinh không gian hành lang lối đi, nhà vệ sinh chung,... tùy theo nơi bạn thuê nhà trọ sẽ có mức giá riêng. Thông thường khoảng từ <strong>20.000-50.000/tháng.&nbsp;</strong></p><p><img src=\"https://taxitaisaigon.vn/upload/files/tien-ve-sinh.jpg\" alt=\"tien-ve-sinh\"></p><h3><strong>2.3 Chất lượng phòng trọ nơi bạn thuê</strong></h3><p>Khi tìm phòng trọ, bạn cần đến tận nơi<strong> </strong>xem xét. Lưu ý quan sát thật kỹ xem căn phòng bạn cần thuê có không gian phòng trọ như thế nào, bạn căn cứ vào những yếu tố sau:</p><p>Tránh thuê những căn phòng quá thấp so với mặt đường để không bị ngập nước.</p><p>Quan sát tầng nhà phòng trọ, tốt nhất nên được lắp la phông để tránh nóng nực vào mùa hè.</p><p>Kiểm tra xem phòng trọ có nhà vệ sinh trong phòng hay là nhà vệ sinh dùng chung. Nếu là dùng chung thì tìm hiểu xem nhà vệ sinh có sạch sẽ, kín đáo không, dãy trọ chủ yếu là nam hay nữ? Nếu bạn là nữ, thì hạn chế thuê kho trọ có nhiều nam và sử dụng nhà vệ sinh chung.</p><p>Tiếp đó kiểm tra các thiết bị trong phòng trọ xem có hư hại gì không (Quạt, các bóng điện, ổ điện, vòi nước, bồn vệ sinh,...).</p><p>Hãy chắc rằng nước sạch sẽ, không có màu hay mùi hôi, vị lạ</p><p>Kiểm tra xem tường nhà có bị nứt hay không. Cửa chính và cửa sổ có khóa trong và kín đáo, chắc chắn hay không.</p><p>Nhà trọ hay phòng trọ tốt nhất nên có đồng hồ điện, nước riêng. Nếu dùng chung chủ nhà&nbsp; thì cách tính sẽ như thế nào?</p><p>Khâu này rất quan trọng. Bạn cần quan sát thật kỹ để đánh giá chất lượng của phòng trọ có tốt và đáp ứng được yêu cầu mà bạn đặt ra không. Bởi chất lượng phòng trọ quyết định lớn đến sức khỏe cũng như đời sống hàng ngày của bạn!</p><h3><strong>2.4 An ninh phòng trọ khi thuê</strong></h3><p>Kinh nghiệm tìm phòng trọ cho thấy, những căn trọ tốt nhưng ở trong khu vực kém an ninh cũng thật đáng lo ngại. Do đó khi tới xem phòng trọ bạn cần lưu ý những điều sau:</p><p>Đầu tiên bạn nên tìm hiểu an ninh khu vực bằng cách hỏi thăm người dân xung quanh. Xem có thường bị trộm cắp, tổ chức cờ bạc, đánh nhau hay không.</p><p>Hàng xóm của bạn là sinh viên, công nhân, người lao động bình thường hay những người bặm trợn, xăm trổ?</p><p>Tiếp đó cần xem xét dãy nhà trọ - phòng trọ ở phía bên ngoài có lắp đặt camera không. Đây là biện pháp vừa giúp cho chủ nhà quan giám sát 24/24 để quản lý an ninh cho dãy trọ, kịp thời phát hiện và phòng tránh hỏa hoạn cháy nổ, kịp thời phát hiện những người trộm cắp để đem lại sự an tâm cho người thuê phòng.</p><p>Khu nhà trọ xung quanh đông dân cư hay vắng người? Đèn đường có đủ sáng không? Cần tránh thuê phòng trọ ở những nơi hẻo lánh.&nbsp;</p><p>Bạn cần xem xét nhà trọ có cổng không, khóa chốt có an toàn và còn được sử dụng được không. Hiện nay có nhiều nhà trọ sử dụng các khóa thông minh bằng việc sử dụng khóa vân tay, nhận diện khuôn mặt để giúp người tâm an tâm khi thuê phòng trọ mình.</p><h3><img src=\"https://taxitaisaigon.vn/upload/files/an-ninh-khu-tro.jpg\" alt=\"an-ninh-khu-tro\"></h3><h3><strong>2.5 Đọc kỹ hợp đồng</strong></h3><p>Khi quyết định thuê phòng trọ thì việc ký hợp đồng luôn là bước rất quan trọng. Vì thế kinh nghiệm thuê phòng trọ của nhiều người khuyên rằng, bạn cần phải đọc thật kỹ hợp đồng thuê nhà trọ để bảo vệ quyền lợi của mình trước khi đặt bút ký. Đầu tiên bạn hãy xem xét kỹ càng thông tin của người chủ cho thuê nhà. (phải có địa chỉ nhà, Số điện thoại, CMND,...)</p><p>Ngoài ra, khi xem xét hợp đồng, bạn cần nắm rõ các điều khoản liên quan đến việc cho thuê như sau:</p><p>Kỳ hạn thuê nhà (theo năm hay theo tháng)</p><p>Hợp đồng cần nêu chi tiết giá thuê phòng và các chi phí khác</p><p>Ngày bắt đầu và ngày hết hạn thuê nhà</p><p>Những điểm cần chú ý trước ngày kết thúc hợp đồng</p><p>Chủ cho thuê có ý định tiếp tục cho thuê nhà khi hết hạn hợp đồng hay không</p><p>Có “điều khoản phá vỡ hợp đồng” cho phép các bên chấm dứt hợp đồng sau một thời gian nhất định do xảy ra các sự cố hay không.</p><p>Tiền cọc thuê nhà là bao nhiêu và điều kiện để nhận lại cọc sau khi thanh lý hợp đồng.</p><p><strong>​&gt;&gt;&gt; Có thể bạn quan tâm:</strong></p><p><a href=\"https://taxitaisaigon.vn/bai-viet-chi-tiet/luat-thue-nha-co-ban-ban-can-nam-de-dam-bao-quyen-loi-cua-minh-818\"><strong>Luật thuê nhà cơ bản bạn cần nắm để đảm bảo quyền lợi của mình</strong></a></p><p><a href=\"https://taxitaisaigon.vn/bai-viet-chi-tiet/mau-hop-dong-thue-nha-817\"><strong>6 mẫu hợp đồng thuê nhà và 14 lưu ý khi ký kết hợp đồng thuê nhà</strong></a></p><h3><img src=\"https://taxitaisaigon.vn/upload/files/hop-dong.jpg\" alt=\"hop-dong\"></h3><h3><strong>2.6 Tìm hiểu nội quy phòng trọ</strong></h3><p>Nội quy phòng trọ được hiểu là những điều lệ chung đặt cho người muốn thuê trọ khi đến sinh sống nơi phòng trọ. Người thuê phải nên đọc thật kỹ các nội quy phòng trọ một cách chi tiết để nắm bắt các quy định có trong nội quy phòng trọ để thực hiện.</p><p>Hiện nay có 3<strong> </strong>nội quy phòng trọ<strong> </strong>mà bạn có thể tham khảo sau đây:</p><p><strong>A.</strong>&nbsp;Nội quy phòng trọ chuẩn đúng yêu cầu pháp luật: Đây là<strong> </strong>nội quy nhà trọ<strong> </strong>hầu hết các trọ cũng phải có.&nbsp;</p><p>Khu nhà trọ cho thuê phải được chính quyền cấp phép và thông qua mới được hoạt động.</p><p>Người thuê trọ phải có đầy đủ giấy tờ tùy thân như giấy chứng minh dân nhân hoặc thẻ căn cước,...</p><p>Khu nhà trọ không được tàng trữ chất cấm hay đồ vật trái pháp luật</p><p>Không mở văn phòng kinh doanh, mua bán sản xuất tại phòng trọ nhằm trốn thuế.</p><p>Không gây ồn ào ảnh hưởng đến dân cư xung quanh nơi thuê trọ.</p><p>Không tổ chức ẩu đả gây mất an ninh trật tự.</p><p>Không chứa chấp người không có giấy tờ tùy thân qua đêm trong phòng nhà trọ.</p><p><strong>B.&nbsp;</strong> Nội quy phòng trọ đảm bảo quyền lợi của người thuê trọ:</p><p>Nội quy không được giới hạn thời gian và mức sử dụng điện, nước người thuê trọ.</p><p>Không được cấm người thuê trọ theo dõi thông số điện nước trong nhà trọ.</p><p>Không được thu thêm nguồn kinh phí nào nếu người thuê không sử dụng thêm</p><p><strong>C.</strong> Nội quy nhà trọ do chủ nhà đặt ra cho người thuê nhà:&nbsp;Mỗi nhà trọ sẽ có những nội quy riêng. Bạn nên tìm hiểu kỹ để tránh trường hợp ảnh hưởng công việc, cuộc sống.&nbsp;</p><p>Thời gian đóng mở cửa: Nếu bạn thường xuyên đi làm thêm về trễ hoặc cần ra ngoài sớm, cần chắc chắn rằng bạn có thể ra vào thoải mái, không bị hạn chế. Bởi một số nơi thường quy định giờ đóng cổng chung trước 11 hoặc 12 giờ khuya.</p><p>Có cho bạn bè, người thân ngủ lại không? Nếu có thì thủ tục như thế nào?</p><p>Có được trang trí, thiết kế lại phòng trọ không? Nếu có thì bạn đừng quên tham khảo<strong> </strong><a href=\"https://taxitaisaigon.vn/bai-viet-chi-tiet/cach-trang-tri-phong-tro-813\"><strong>6 cách trang trí phòng trọ đơn giản&nbsp;mà cực đẹp </strong></a>của Saigon Express.&nbsp;</p><p>Và các quy định nhất định phải có như: Không được tụ tập gây gổ đánh nhau trong phòng trọ, Không được gây ồn ào ảnh hưởng đến người khác, Không được nhậu nhẹt, quấy rối trong dãy trọ, ...</p><p><i><strong>**** Những lưu ý khi tìm thuê nhà trọ:</strong></i></p><p>Phòng trọ phải sạch sẽ, thoáng mát, có nhà vệ sinh, cửa sổ ra vào, điện nước,..</p><p>Giá thuê không quá đắt so với những nhà tương tự. vì cùng một dãy trọ và kích thước bằng nhau thì sẽ không chênh lệch hơn nhau bao nhiêu.</p><p>Nước dùng phải sạch, tránh những nhà trọ dùng nước giếng và hay bị cắt nước.</p><p>Các cửa trong phòng phải có chốt an toàn để đảm bảo được an toàn cho bạn khi đến sinh sống trong phòng trọ, tránh mất mát tài sản.</p><p>Trao đổi rõ ràng với chủ nhà nếu các thiết bị trong nhà trọ hư thì bên nào phải chịu trách nhiệm sửa chữa lại.</p><p>Hỏi rõ các chi phí về tiền điện, tiền nước, tiền internet, tiền rác,...để chi trả đúng với số tiền hai bên đã thỏa thuận.</p><p>Tránh thuê các nhà trọ ở quá cao phải đi cầu thang bộ quá nhiều vì sẽ chuyển đồ đạc rất khó và mất nhiều thời gian đi lên đi xuống.</p><p>Nên trả tiền thuê trọ từng tháng để tránh việc chủ trọ quên và quy lại nhiều tháng trả một lần làm bạn đôi khi không có số tiền nhiều để trả.</p><p>Trao đổi giờ giấc đi lại nếu bạn thuê phòng trọ trong nhà chủ nhà, tránh ảnh hưởng đến giờ giấc của bạn.</p><p>&nbsp;Khi ký hợp đồng bạn nên giữ cho mình một bản hợp đồng vì đây là điều kiện tất yếu để đảm bảo việc thuê nhà trọ.</p>', '2024-04-03 18:38:23', '2024-04-16 17:20:50');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tieude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trangthai` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `ten`, `slug`, `tieude`, `mota`, `trangthai`, `created_at`, `updated_at`) VALUES
(21, 'Cho thuê phòng trọ', 'cho-thue-phong-tro', NULL, 'Cho thuê phòng trọ', 1, '2023-05-31 14:30:17', '2023-06-09 04:06:42'),
(22, 'Nhà cho thuê', 'nha-cho-thue', NULL, 'Nhà cho thuê', 1, '2023-05-31 14:30:48', '2023-06-09 04:06:38'),
(23, 'Cho thuê mặt bằng', 'cho-thue-mat-bang', NULL, 'Cho thuê mặt bằng', 1, '2023-05-31 14:33:12', '2023-06-09 04:06:35'),
(24, 'Ở ghép', 'o-ghep', NULL, 'Ở ghép', 1, '2023-05-31 15:21:38', '2023-06-11 01:05:10'),
(27, 'Mặt bằng', 'mat-bang', NULL, NULL, 1, '2024-04-16 17:19:31', '2024-04-16 17:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `diachi`
--

CREATE TABLE `diachi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tieude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anhdaidien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trangthai` tinyint(4) NOT NULL DEFAULT 1,
  `hot` tinyint(4) NOT NULL DEFAULT 0,
  `parent_id` bigint(20) NOT NULL DEFAULT 0,
  `loai` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là quận huyện, 2 là phường xã',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diachi`
--

INSERT INTO `diachi` (`id`, `ten`, `slug`, `tieude`, `mota`, `anhdaidien`, `trangthai`, `hot`, `parent_id`, `loai`, `created_at`, `updated_at`) VALUES
(105, 'Bình Thuỷ', 'binh-thuy', NULL, NULL, '2024-04-04__bnh-thy.jpg', 1, 1, 0, 1, '2024-02-25 14:29:43', '2024-04-03 17:13:34'),
(106, 'An Thới', 'an-thoi', NULL, NULL, NULL, 1, 0, 105, 2, '2024-02-25 14:30:53', '2024-02-25 14:30:53'),
(107, 'Cái Răng', 'cai-rang', NULL, NULL, '2024-04-04__logo-hero.jpg', 1, 1, 0, 1, '2024-02-25 14:31:23', '2024-04-03 17:11:35'),
(108, 'Ba Láng', 'ba-lang', NULL, NULL, NULL, 1, 0, 107, 2, '2024-02-25 14:31:32', '2024-02-25 14:31:33'),
(109, 'Hưng Phú', 'hung-phu', NULL, NULL, NULL, 1, 0, 107, 2, '2024-02-25 14:32:16', '2024-02-25 14:32:16'),
(110, 'Ninh Kiều', 'ninh-kieu', NULL, NULL, '2024-04-04__qun-ci-rng.jpg', 1, 1, 0, 1, '2024-02-25 14:32:24', '2024-04-03 17:11:56'),
(111, 'An Bình', 'an-binh', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 14:32:38', '2024-02-25 14:33:16'),
(112, 'Hưng Lợi', 'hung-loi', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 14:32:49', '2024-02-25 14:32:49'),
(113, 'Ô Môn', 'o-mon', NULL, NULL, NULL, 1, 0, 0, 1, '2024-02-25 15:50:08', '2024-02-25 15:50:08'),
(114, 'Châu Văn Liêm', 'chau-van-liem', NULL, NULL, NULL, 1, 0, 113, 2, '2024-02-25 15:50:20', '2024-02-25 15:50:20'),
(116, 'Thốt Nốt', 'thot-not', NULL, NULL, NULL, 1, 0, 0, 1, '2024-02-25 16:45:22', '2024-02-25 16:45:22'),
(117, 'Bùi Hữu Nghĩa', 'bui-huu-nghia', NULL, NULL, NULL, 1, 0, 105, 2, '2024-02-25 16:45:46', '2024-02-25 16:45:46'),
(118, 'Bình Tuỷ', 'binh-tuy', NULL, NULL, NULL, 1, 0, 105, 2, '2024-02-25 16:47:14', '2024-02-25 16:47:14'),
(119, 'Long Hoà', 'long-hoa', NULL, NULL, NULL, 1, 0, 105, 2, '2024-02-25 16:47:54', '2024-02-25 16:47:54'),
(120, 'Long Tuyền', 'long-tuyen', NULL, NULL, NULL, 1, 0, 105, 2, '2024-02-25 16:48:23', '2024-02-25 16:48:23'),
(121, 'Thới An Đông', 'thoi-an-dong', NULL, NULL, NULL, 1, 0, 105, 2, '2024-02-25 16:48:53', '2024-02-25 16:48:53'),
(122, 'Trà An', 'tra-an', NULL, NULL, NULL, 1, 0, 105, 2, '2024-02-25 16:54:51', '2024-02-25 16:54:51'),
(123, 'Trà Nóc', 'tra-noc', NULL, NULL, NULL, 1, 0, 105, 2, '2024-02-25 16:55:09', '2024-02-25 16:55:09'),
(127, 'Hưng Thạnh', 'hung-thanh', NULL, NULL, NULL, 1, 0, 107, 2, '2024-02-25 16:56:12', '2024-02-25 16:56:12'),
(128, 'Lê Bình', 'le-binh', NULL, NULL, NULL, 1, 0, 107, 2, '2024-02-25 16:56:26', '2024-02-25 16:56:26'),
(129, 'Phú Thứ', 'phu-thu', NULL, NULL, NULL, 1, 0, 107, 2, '2024-02-25 16:56:43', '2024-02-25 16:56:43'),
(130, 'Tân Phú', 'tan-phu', NULL, NULL, NULL, 1, 0, 107, 2, '2024-02-25 16:57:05', '2024-02-25 16:57:05'),
(131, 'Thường Thạnh', 'thuong-thanh', NULL, NULL, NULL, 1, 0, 107, 2, '2024-02-25 16:57:18', '2024-02-25 16:57:18'),
(133, 'An Cư', 'an-cu', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 16:57:53', '2024-02-25 16:57:53'),
(134, 'An Hoà', 'an-hoa', NULL, NULL, '2024-04-04__location-hcm.jpg', 1, 1, 110, 2, '2024-02-25 16:58:06', '2024-04-03 17:12:15'),
(135, 'An Khánh', 'an-khanh', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 16:58:19', '2024-02-25 16:58:19'),
(136, 'An Nghiệp', 'an-nghiep', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 16:58:31', '2024-02-25 16:58:31'),
(137, 'An Phú', 'an-phu', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 16:58:47', '2024-02-25 16:58:47'),
(138, 'Cái Khế', 'cai-khe', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 16:59:06', '2024-02-25 16:59:06'),
(141, 'Tân An', 'tan-an', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 16:59:41', '2024-02-25 16:59:41'),
(142, 'Thới Bình', 'thoi-binh', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 16:59:56', '2024-02-25 16:59:56'),
(143, 'Xuân Khánh', 'xuan-khanh', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 17:00:14', '2024-02-25 17:00:14'),
(145, 'Long Hưng', 'long-hung', NULL, NULL, NULL, 1, 0, 113, 2, '2024-02-25 17:00:43', '2024-02-25 17:00:43'),
(146, 'Phước Thới', 'phuoc-thoi', NULL, NULL, NULL, 1, 0, 113, 2, '2024-02-25 17:00:56', '2024-02-25 17:00:56'),
(147, 'Thới An', 'thoi-an', NULL, NULL, NULL, 1, 0, 113, 2, '2024-02-25 17:01:07', '2024-02-25 17:01:07'),
(148, 'Thới Hoà', 'thoi-hoa', NULL, NULL, NULL, 1, 0, 113, 2, '2024-02-25 17:01:18', '2024-02-25 17:01:18'),
(149, 'Thới Long', 'thoi-long', NULL, NULL, NULL, 1, 0, 113, 2, '2024-02-25 17:01:37', '2024-02-25 17:01:37'),
(150, 'Trường Lạc', 'truong-lac', NULL, NULL, NULL, 1, 0, 113, 2, '2024-02-25 17:01:52', '2024-02-25 17:01:52'),
(151, 'Tân Hưng', 'tan-hung', NULL, NULL, NULL, 1, 0, 116, 2, '2024-02-25 17:02:06', '2024-02-25 17:02:06'),
(152, 'Tân Lộc', 'tan-loc', NULL, NULL, NULL, 1, 0, 116, 2, '2024-02-25 17:02:18', '2024-02-25 17:02:18'),
(153, 'Thạnh Hoà', 'thanh-hoa', NULL, NULL, NULL, 1, 0, 116, 2, '2024-02-25 17:02:32', '2024-02-25 17:02:32'),
(156, 'Thới Thuận', 'thoi-thuan', NULL, NULL, NULL, 1, 0, 116, 2, '2024-02-25 17:05:33', '2024-02-25 17:05:33'),
(157, 'Thuận An', 'thuan-an', NULL, NULL, NULL, 1, 0, 116, 2, '2024-02-25 17:05:43', '2024-02-25 17:05:43'),
(158, 'Thuận Hưng', 'thuan-hung', NULL, NULL, NULL, 1, 0, 116, 2, '2024-02-25 17:05:57', '2024-02-25 17:05:57'),
(159, 'Trung Kiên', 'trung-kien', NULL, NULL, NULL, 1, 0, 116, 2, '2024-02-25 17:06:10', '2024-02-25 17:06:10'),
(160, 'Trung Nhứt', 'trung-nhut', NULL, NULL, NULL, 1, 0, 116, 2, '2024-02-25 17:06:18', '2024-02-25 17:06:18'),
(161, 'Cờ Đỏ', 'co-do', NULL, NULL, NULL, 1, 0, 0, 1, '2024-02-25 17:08:29', '2024-02-25 17:08:29'),
(162, 'Thị trấn Cờ Đỏ', 'thi-tran-co-do', NULL, NULL, NULL, 1, 0, 161, 2, '2024-02-25 17:08:42', '2024-02-25 17:08:42'),
(163, 'Đông Hiệp', 'dong-hiep', NULL, NULL, NULL, 1, 0, 161, 2, '2024-02-25 17:08:56', '2024-02-25 17:08:56'),
(164, 'Đông Thắng', 'dong-thang', NULL, NULL, NULL, 1, 0, 161, 2, '2024-02-25 17:09:13', '2024-02-25 17:09:13'),
(165, 'Thạnh Phú', 'thanh-phu', NULL, NULL, NULL, 1, 0, 161, 2, '2024-02-25 17:09:21', '2024-02-25 17:09:21'),
(166, 'Thới Đồng', 'thoi-dong', NULL, NULL, NULL, 1, 0, 161, 2, '2024-02-25 17:09:29', '2024-02-25 17:09:29'),
(167, 'Thới Hưng', 'thoi-hung', NULL, NULL, NULL, 1, 0, 161, 2, '2024-02-25 17:09:38', '2024-02-25 17:09:38'),
(168, 'Thới Xuân', 'thoi-xuan', NULL, NULL, NULL, 1, 0, 161, 2, '2024-02-25 17:09:46', '2024-02-25 17:10:18'),
(169, 'Trung An', 'trung-an', NULL, NULL, NULL, 1, 0, 161, 2, '2024-02-25 17:09:57', '2024-02-25 17:10:26'),
(170, 'Trung Hưng', 'trung-hung', NULL, NULL, NULL, 1, 0, 161, 2, '2024-02-25 17:10:06', '2024-02-25 17:10:33'),
(171, 'Trung Thạnh', 'trung-thanh', NULL, NULL, NULL, 1, 0, 161, 2, '2024-02-25 17:10:44', '2024-02-25 17:10:44'),
(172, 'Phong Điền', 'phong-dien', NULL, NULL, NULL, 1, 0, 0, 1, '2024-02-25 17:10:54', '2024-02-25 17:10:54'),
(173, 'Thị trấn Phong Điền', 'thi-tran-phong-dien', NULL, NULL, NULL, 1, 0, 172, 2, '2024-02-25 17:11:04', '2024-02-25 17:11:04'),
(174, 'Giai Xuân', 'giai-xuan', NULL, NULL, NULL, 1, 0, 172, 2, '2024-02-25 17:11:18', '2024-02-25 17:11:18'),
(175, 'Mỹ Khánh', 'my-khanh', NULL, NULL, NULL, 1, 0, 172, 2, '2024-02-25 17:11:25', '2024-02-25 17:11:25'),
(176, 'Nhơn Ái', 'nhon-ai', NULL, NULL, NULL, 1, 0, 172, 2, '2024-02-25 17:11:34', '2024-02-25 17:11:34'),
(177, 'Nhơn Nghĩa', 'nhon-nghia', NULL, NULL, NULL, 1, 0, 172, 2, '2024-02-25 17:11:42', '2024-02-25 17:11:43'),
(178, 'Tân Thới', 'tan-thoi', NULL, NULL, NULL, 1, 0, 172, 2, '2024-02-25 17:11:52', '2024-02-25 17:11:52'),
(179, 'Trường Long', 'truong-long', NULL, NULL, NULL, 1, 0, 172, 2, '2024-02-25 17:12:01', '2024-02-25 17:12:01'),
(180, 'Thới Lai', 'thoi-lai', NULL, NULL, NULL, 1, 0, 0, 1, '2024-02-25 17:12:09', '2024-02-25 17:12:09'),
(181, 'Thị trấn Thới Lai', 'thi-tran-thoi-lai', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:12:17', '2024-02-25 17:12:17'),
(182, 'Định Môn', 'dinh-mon', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:12:25', '2024-02-25 17:12:25'),
(183, 'Đông Bình', 'dong-binh', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:12:34', '2024-02-25 17:12:34'),
(184, 'Đông Thuận', 'dong-thuan', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:12:45', '2024-02-25 17:12:45'),
(185, 'Thân Thạnh', 'than-thanh', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:12:56', '2024-02-25 17:12:56'),
(186, 'Thới Tân', 'thoi-tan', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:13:08', '2024-02-25 17:13:08'),
(187, 'Thới Thạnh', 'thoi-thanh', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:13:17', '2024-02-25 17:13:17'),
(188, 'Trường Thắng', 'truong-thang', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:14:19', '2024-02-25 17:14:19'),
(189, 'Trường Thành', 'truong-thanh', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:14:28', '2024-02-25 17:14:28'),
(190, 'Trường Xuân', 'truong-xuan', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:14:37', '2024-02-25 17:14:37'),
(191, 'Trường Xuân A', 'truong-xuan-a', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:14:45', '2024-02-25 17:14:45'),
(192, 'Trường Xuân B', 'truong-xuan-b', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:14:54', '2024-02-25 17:14:54'),
(193, 'Xuân Thắng', 'xuan-thang', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:15:13', '2024-02-25 17:15:13'),
(194, 'Vĩnh Thạnh', 'vinh-thanh', NULL, NULL, NULL, 1, 0, 0, 1, '2024-02-25 17:15:21', '2024-02-25 17:15:21'),
(195, 'Thị trấn Vĩnh Thạnh', 'thi-tran-vinh-thanh', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:15:30', '2024-02-25 17:15:30'),
(196, 'Thị trấn Thạnh An', 'thi-tran-thanh-an', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:15:39', '2024-02-25 17:15:39'),
(197, 'Thạnh An', 'thanh-an', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:15:47', '2024-02-25 17:15:55'),
(198, 'Thạnh Lộc', 'thanh-loc', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:16:03', '2024-02-25 17:16:03'),
(199, 'Thạnh Lợi', 'thanh-loi', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:16:12', '2024-02-25 17:16:12'),
(200, 'Thạnh Mỹ', 'thanh-my', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:16:21', '2024-02-25 17:16:21'),
(201, 'Thạnh Quới', 'thanh-quoi', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:16:29', '2024-02-25 17:16:29'),
(202, 'Thạnh Thắng', 'thanh-thang', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:16:40', '2024-02-25 17:16:40'),
(203, 'Thạnh Tiến', 'thanh-tien', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:16:55', '2024-02-25 17:16:55'),
(204, 'Vĩnh Bình', 'vinh-binh', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:17:05', '2024-02-25 17:17:05'),
(205, 'Vĩnh Trinh', 'vinh-trinh', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:17:15', '2024-02-25 17:17:15'),
(206, 'Phường Thốt Nốt', 'phuong-thot-not', NULL, NULL, NULL, 1, 0, 116, 2, '2024-02-25 17:19:02', '2024-02-25 17:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `hinhanh_ct`
--

CREATE TABLE `hinhanh_ct` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duongdan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phong_id` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hinhanh_ct`
--

INSERT INTO `hinhanh_ct` (`id`, `ten`, `duongdan`, `phong_id`, `created_at`, `updated_at`) VALUES
(137, '1.jpg', '2024-02-23__1jpg.jpg', 94, '2024-02-23 13:10:38', NULL),
(138, '2.jpg', '2024-02-23__2jpg.jpg', 94, '2024-02-23 13:10:38', NULL),
(139, 'hostel_1.jpg', '2024-02-25__hostel-1jpg.jpg', 95, '2024-02-25 14:52:44', NULL),
(140, 'hostel_2.jpg', '2024-02-25__hostel-2jpg.jpg', 95, '2024-02-25 14:52:44', NULL),
(141, 'hostel_3.jpg', '2024-02-25__hostel-3jpg.jpg', 95, '2024-02-25 14:52:44', NULL),
(142, 'hostel_4.jpg', '2024-02-25__hostel-4jpg.jpg', 95, '2024-02-25 14:52:44', NULL),
(143, 'hostel_5.jpg', '2024-02-25__hostel-5jpg.jpg', 95, '2024-02-25 14:52:44', NULL),
(144, 'hostel_5.jpg', '2024-02-25__hostel-5jpg.jpg', 96, '2024-02-25 14:59:57', NULL),
(145, 'hostel_6.jpg', '2024-02-25__hostel-6jpg.jpg', 96, '2024-02-25 14:59:57', NULL),
(146, 'hostel_7.jpg', '2024-02-25__hostel-7jpg.jpg', 96, '2024-02-25 14:59:57', NULL),
(147, 'hostel_9.jpg', '2024-02-25__hostel-9jpg.jpg', 96, '2024-02-25 14:59:57', NULL),
(148, 'hostel_7.jpg', '2024-02-25__hostel-7jpg.jpg', 97, '2024-02-25 15:09:21', NULL),
(149, 'hostel_11.jpg', '2024-02-25__hostel-11jpg.jpg', 97, '2024-02-25 15:09:21', NULL),
(150, 'hostel_12.jpg', '2024-02-25__hostel-12jpg.jpg', 97, '2024-02-25 15:09:21', NULL),
(151, 'hostel_13.jpg', '2024-02-25__hostel-13jpg.jpg', 97, '2024-02-25 15:09:21', NULL),
(152, 'hostel_14.jpg', '2024-02-25__hostel-14jpg.jpg', 97, '2024-02-25 15:09:21', NULL),
(153, 'hostel_10.jpg', '2024-02-25__hostel-10jpg.jpg', 98, '2024-02-25 15:16:10', NULL),
(154, 'hostel_11.jpg', '2024-02-25__hostel-11jpg.jpg', 98, '2024-02-25 15:16:10', NULL),
(155, 'hostel_12.jpg', '2024-02-25__hostel-12jpg.jpg', 98, '2024-02-25 15:16:10', NULL),
(156, 'hostel_13.jpg', '2024-02-25__hostel-13jpg.jpg', 98, '2024-02-25 15:16:10', NULL),
(157, 'hostel_14.jpg', '2024-02-25__hostel-14jpg.jpg', 98, '2024-02-25 15:16:10', NULL),
(158, 'hostel_14.jpg', '2024-02-25__hostel-14jpg.jpg', 99, '2024-02-25 15:18:30', NULL),
(159, 'hostel_15.jpg', '2024-02-25__hostel-15jpg.jpg', 99, '2024-02-25 15:18:30', NULL),
(160, 'hostel_16.jpg', '2024-02-25__hostel-16jpg.jpg', 99, '2024-02-25 15:18:30', NULL),
(161, 'hostel_17.jpg', '2024-02-25__hostel-17jpg.jpg', 99, '2024-02-25 15:18:30', NULL),
(162, 'hostel_19.png', '2024-02-25__hostel-19png.png', 99, '2024-02-25 15:18:30', NULL),
(163, 'hostel_17.jpg', '2024-02-25__hostel-17jpg.jpg', 100, '2024-02-25 15:23:42', NULL),
(164, 'hostel_19.png', '2024-02-25__hostel-19png.png', 100, '2024-02-25 15:23:42', NULL),
(165, 'hostel_20.jpg', '2024-02-25__hostel-20jpg.jpg', 100, '2024-02-25 15:23:42', NULL),
(166, 'hostel_21.jpg', '2024-02-25__hostel-21jpg.jpg', 101, '2024-02-25 15:42:50', NULL),
(167, 'hostel_22.jpg', '2024-02-25__hostel-22jpg.jpg', 101, '2024-02-25 15:42:50', NULL),
(168, 'Bảng Full Main.jpg', '2024-03-09__bang-full-mainjpg.jpg', 102, '2024-03-09 13:10:45', NULL),
(169, 'Bảng Full.jpg', '2024-03-09__bang-fulljpg.jpg', 102, '2024-03-09 13:10:45', NULL),
(170, 'Menu Dịch Vụ FB.jpg', '2024-03-09__menu-dich-vu-fbjpg.jpg', 102, '2024-03-09 13:10:45', NULL),
(171, 'Very Account.jpg', '2024-03-09__very-accountjpg.jpg', 102, '2024-03-09 13:10:45', NULL),
(172, 'hostel_14.jpg', '2024-03-29__hostel-14jpg.jpg', 103, '2024-03-29 13:28:32', NULL),
(173, 'hostel_15.jpg', '2024-03-29__hostel-15jpg.jpg', 103, '2024-03-29 13:28:32', NULL),
(174, 'hostel_14.jpg', '2024-03-29__hostel-14jpg.jpg', 105, '2024-03-29 14:53:10', NULL),
(175, 'hostel_15.jpg', '2024-03-29__hostel-15jpg.jpg', 105, '2024-03-29 14:53:10', NULL),
(176, 'hostel_12.jpg', '2024-04-01__hostel-12jpg.jpg', 106, '2024-04-01 00:20:06', NULL),
(177, 'hostel_14.jpg', '2024-04-01__hostel-14jpg.jpg', 106, '2024-04-01 00:20:06', NULL),
(178, 'Cantho_hostel-1.png', '2024-04-04__cantho-hostel-1png.png', 107, '2024-04-03 17:03:17', NULL),
(179, 'Cantho_hostel-2.jpg', '2024-04-04__cantho-hostel-2jpg.jpg', 107, '2024-04-03 17:03:17', NULL),
(180, 'Cantho_hostel-3.png', '2024-04-04__cantho-hostel-3png.png', 107, '2024-04-03 17:03:17', NULL),
(181, 'Cantho_hostel-2.jpg', '2024-04-04__cantho-hostel-2jpg.jpg', 108, '2024-04-03 17:05:39', NULL),
(182, 'Cantho_hostel-3.png', '2024-04-04__cantho-hostel-3png.png', 108, '2024-04-03 17:05:39', NULL),
(183, 'hostel_3.jpg', '2024-04-04__hostel-3jpg.jpg', 109, '2024-04-03 17:08:42', NULL),
(184, 'hostel_4.jpg', '2024-04-04__hostel-4jpg.jpg', 109, '2024-04-03 17:08:42', NULL),
(185, 'hostel_6.jpg', '2024-04-04__hostel-6jpg.jpg', 109, '2024-04-03 17:08:42', NULL),
(186, 'Cantho_hostel-3.png', '2024-04-04__cantho-hostel-3png.png', 110, '2024-04-03 17:18:28', NULL),
(187, 'Cantho_hostel-4.jpg', '2024-04-04__cantho-hostel-4jpg.jpg', 110, '2024-04-03 17:18:28', NULL),
(188, 'Cantho_hostel-5.jpg', '2024-04-04__cantho-hostel-5jpg.jpg', 110, '2024-04-03 17:18:28', NULL),
(189, 'Cantho_hostel-6.jpg', '2024-04-04__cantho-hostel-6jpg.jpg', 110, '2024-04-03 17:18:28', NULL),
(190, 'Cantho_hostel-7.jpg', '2024-04-04__cantho-hostel-7jpg.jpg', 111, '2024-04-03 17:22:07', NULL),
(191, 'hostel_1.jpg', '2024-04-04__hostel-1jpg.jpg', 112, '2024-04-03 17:44:21', NULL),
(192, 'hostel_2.jpg', '2024-04-04__hostel-2jpg.jpg', 112, '2024-04-03 17:44:21', NULL),
(193, 'hostel_3.jpg', '2024-04-04__hostel-3jpg.jpg', 112, '2024-04-03 17:44:21', NULL),
(194, 'Cantho_hostel-4.jpg', '2024-04-16__cantho-hostel-4jpg.jpg', 113, '2024-04-16 15:16:33', NULL),
(195, 'Cantho_hostel-5.jpg', '2024-04-16__cantho-hostel-5jpg.jpg', 113, '2024-04-16 15:16:33', NULL),
(196, 'Cantho_hostel-6.jpg', '2024-04-16__cantho-hostel-6jpg.jpg', 113, '2024-04-16 15:16:33', NULL),
(197, 'Cantho_hostel-3.png', '2024-04-16__cantho-hostel-3png.png', 114, '2024-04-16 15:43:22', NULL),
(198, 'Cantho_hostel-4.jpg', '2024-04-16__cantho-hostel-4jpg.jpg', 114, '2024-04-16 15:43:22', NULL),
(199, 'Cantho_hostel-5.jpg', '2024-04-16__cantho-hostel-5jpg.jpg', 114, '2024-04-16 15:43:22', NULL),
(200, 'Cantho_hostel-6.jpg', '2024-04-16__cantho-hostel-6jpg.jpg', 114, '2024-04-16 15:43:22', NULL),
(201, 'Cantho_hostel-4.jpg', '2024-04-17__cantho-hostel-4jpg.jpg', 115, '2024-04-16 17:13:44', NULL),
(202, 'Cantho_hostel-5.jpg', '2024-04-17__cantho-hostel-5jpg.jpg', 115, '2024-04-16 17:13:44', NULL),
(203, 'Cantho_hostel-6.jpg', '2024-04-17__cantho-hostel-6jpg.jpg', 115, '2024-04-16 17:13:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lichsu_naptien`
--

CREATE TABLE `lichsu_naptien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ma` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nguoidung_id` bigint(20) NOT NULL DEFAULT 0,
  `loai` tinyint(4) NOT NULL COMMENT 'phương thức',
  `tien` int(11) NOT NULL DEFAULT 0,
  `giamgia` int(11) NOT NULL DEFAULT 0,
  `tongtien` int(11) NOT NULL DEFAULT 0,
  `trangthai` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lichsu_naptien`
--

INSERT INTO `lichsu_naptien` (`id`, `ma`, `nguoidung_id`, `loai`, `tien`, `giamgia`, `tongtien`, `trangthai`, `created_at`, `updated_at`) VALUES
(97, 'CXwUNa19nlnaU5b17', 17, 3, 60000, 0, 60000, 1, '2024-02-23 13:12:58', '2024-02-23 13:12:58'),
(98, '9Zfbo8n3sO9fLR818', 18, 3, 99999999, 0, 99999999, 2, '2024-02-25 14:44:39', '2024-02-25 14:44:39'),
(99, 'IS0rJ0FEiNqwIGe18', 18, 3, 2323333, 0, 2323333, 1, '2024-03-09 13:12:46', '2024-03-09 13:12:46'),
(100, 'IGyDXPEVz65Ec1K18', 18, 3, 1222, 0, 1222, 1, '2024-03-16 13:31:46', '2024-03-16 13:31:47'),
(101, 'I7PzSblIssAQlHJ18', 18, 3, 10000, 0, 10000, 1, '2024-03-19 16:37:41', '2024-03-19 16:37:41'),
(102, 'UWOL3Pyvk9gtulF18', 18, 3, 100000, 0, 100000, 1, '2024-03-21 13:27:06', '2024-03-21 13:27:08'),
(103, 'kgBcFFb3zoxlamf18', 18, 3, 1000000, 0, 1000000, 1, '2024-03-28 14:37:35', '2024-03-28 14:37:35'),
(104, 'cGvLpeGvCeJS83m18', 18, 3, 100000, 0, 100000, 1, '2024-03-28 14:42:36', '2024-03-28 14:42:36'),
(105, 'fCk49UB7HwltoAw18', 18, 3, 1222222, 0, 1222222, 1, '2024-03-28 14:53:01', '2024-03-28 14:53:02'),
(106, 's7JY9IK8uavA1Hv18', 18, 3, 33434, 0, 33434, 1, '2024-03-28 14:55:21', '2024-03-28 14:55:21'),
(107, 'vPJ0SgQFzB6ySne18', 18, 3, 11111, 0, 11111, 1, '2024-03-28 14:56:46', '2024-03-28 14:56:46'),
(108, 'gOIssOULitoBlDb18', 18, 3, 22222, 0, 22222, 1, '2024-03-28 15:02:32', '2024-03-28 15:02:33'),
(109, '0xaOpSVjjUW4YmI18', 18, 3, 12333, 0, 12333, 1, '2024-03-28 15:07:28', '2024-03-28 15:07:28'),
(110, 'bmcASp1ogwHxdsK18', 18, 3, 122222, 0, 122222, 1, '2024-03-28 15:07:45', '2024-03-28 15:07:45'),
(111, 'cvawyQW5cYY2NMb18', 18, 3, 233232323, 0, 233232323, 1, '2024-03-28 15:08:05', '2024-03-28 15:08:05'),
(112, 'k7jBz1dl9566EKJ18', 18, 3, 122222, 0, 122222, 1, '2024-03-28 15:08:09', '2024-03-28 15:08:09'),
(113, '9zDac7Xv3rBvVDO18', 18, 3, 1211112, 0, 1211112, 1, '2024-03-28 15:17:27', '2024-03-28 15:17:27'),
(114, 'nfnptuuX5WH5Lhk18', 18, 3, 1222222, 0, 1222222, 1, '2024-03-28 15:21:23', '2024-03-28 15:21:23'),
(115, 'TKkMtKf07gPwlHv18', 18, 3, 99999, 0, 99999, 1, '2024-03-28 15:22:09', '2024-03-28 15:22:09'),
(116, 'RMCwC30J9sMHWV518', 18, 3, 11111, 0, 11111, 2, '2024-03-28 15:23:56', '2024-03-29 14:50:23'),
(117, 'HDb9FJBDpQKgS0B18', 18, 3, 11111, 0, 11111, 2, '2024-03-28 15:27:40', '2024-03-29 14:50:15'),
(118, 'lqVpNuKtPtIhh8918', 18, 3, 12222, 0, 12222, 1, '2024-04-03 16:46:21', '2024-04-03 16:46:21'),
(119, 'yRP5Lnoi0Am4l8S18', 18, 3, 2222, 0, 2222, 1, '2024-04-03 16:50:30', '2024-04-03 16:50:30'),
(120, 'lJsNOfBGnms06h418', 18, 3, 120000, 0, 120000, 1, '2024-04-03 16:52:11', '2024-04-03 16:52:11'),
(121, 'obnk5LAz4zTDQTr18', 18, 3, 1000000, 0, 1000000, 1, '2024-04-03 17:40:34', '2024-04-03 17:40:34'),
(122, 'eycC42fBwQDV6Ru18', 18, 3, 10000, 0, 10000, 1, '2024-04-16 15:23:04', '2024-04-16 15:23:04'),
(123, 'k7JYs2tockHQbFU18', 18, 1, 100000, 29, 100029, 2, '2024-04-16 15:23:55', '2024-04-16 15:23:55'),
(124, 't979MkJQHW5abk418', 18, 3, 10000000, 0, 10000000, 2, '2024-04-16 15:41:08', '2024-04-16 15:46:05'),
(125, 'Cb6faoWRtLJ7Izt18', 18, 3, 100000, 0, 100000, 1, '2024-04-16 17:00:32', '2024-04-16 17:00:32'),
(126, 'LwxjLsxekYR0Wm818', 18, 3, 9999999, 0, 9999999, 2, '2024-04-16 17:11:19', '2024-04-16 17:21:15'),
(127, 'TIkWsSkw1HRilzx18', 18, 1, 222222, 0, 222222, 2, '2024-04-16 17:21:32', '2024-04-16 17:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `lichsu_thanhtoan`
--

CREATE TABLE `lichsu_thanhtoan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nguoidung_id` bigint(20) NOT NULL DEFAULT 0,
  `loai` tinyint(4) NOT NULL DEFAULT 1,
  `phong_id` int(11) NOT NULL DEFAULT 0,
  `dichvu_id` tinyint(4) NOT NULL DEFAULT 0,
  `tien` int(11) NOT NULL DEFAULT 0,
  `trangthai` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lichsu_thanhtoan`
--

INSERT INTO `lichsu_thanhtoan` (`id`, `nguoidung_id`, `loai`, `phong_id`, `dichvu_id`, `tien`, `trangthai`, `created_at`, `updated_at`) VALUES
(72, 18, 5, 95, 0, 640000, 2, '2024-02-25 14:53:33', '2024-02-25 14:53:33'),
(73, 18, 4, 96, 0, 450000, 2, '2024-02-25 15:00:09', '2024-02-25 15:00:09'),
(74, 18, 3, 97, 0, 300000, 2, '2024-02-25 15:09:32', '2024-02-25 15:09:32'),
(75, 18, 2, 98, 0, 220000, 2, '2024-02-25 15:16:21', '2024-02-25 15:16:21'),
(76, 18, 5, 99, 0, 1120000, 2, '2024-02-25 15:18:43', '2024-02-25 15:18:43'),
(77, 18, 1, 100, 0, 24000, 2, '2024-02-25 15:23:50', '2024-02-25 15:23:50'),
(78, 18, 5, 101, 0, 400000, 2, '2024-02-25 15:42:59', '2024-02-25 15:42:59'),
(79, 18, 5, 102, 0, 1200000, 2, '2024-03-09 13:11:48', '2024-03-09 13:11:48'),
(80, 18, 5, 103, 0, 960000, 2, '2024-03-29 13:29:43', '2024-03-29 13:29:43'),
(81, 18, 2, 104, 0, 100000, 2, '2024-03-29 13:58:16', '2024-03-29 13:58:16'),
(82, 18, 3, 104, 0, 150000, 2, '2024-03-29 14:47:16', '2024-03-29 14:47:16'),
(83, 18, 5, 106, 0, 1280000, 2, '2024-04-01 00:20:25', '2024-04-01 00:20:26'),
(84, 18, 5, 107, 0, 1600000, 2, '2024-04-03 17:09:02', '2024-04-03 17:09:02'),
(85, 18, 4, 108, 0, 1000000, 2, '2024-04-03 17:09:32', '2024-04-03 17:09:32'),
(86, 18, 1, 109, 0, 40000, 2, '2024-04-03 17:09:41', '2024-04-03 17:09:41'),
(87, 18, 1, 110, 0, 40000, 2, '2024-04-03 17:18:41', '2024-04-03 17:18:41'),
(88, 18, 1, 99, 0, 40000, 2, '2024-04-03 17:19:23', '2024-04-03 17:19:23'),
(89, 18, 3, 98, 0, 570000, 2, '2024-04-03 17:19:34', '2024-04-03 17:19:34'),
(90, 18, 4, 96, 0, 1000000, 2, '2024-04-03 17:19:45', '2024-04-03 17:19:45'),
(91, 18, 5, 111, 0, 1600000, 2, '2024-04-03 17:22:18', '2024-04-03 17:22:18'),
(92, 18, 5, 114, 0, 1520000, 2, '2024-04-16 15:43:38', '2024-04-16 15:43:38'),
(93, 18, 5, 115, 0, 1440000, 2, '2024-04-16 17:14:04', '2024-04-16 17:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `ma_dien_thoai`
--

CREATE TABLE `ma_dien_thoai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `maxacthuc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_hoatdong` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ma_dien_thoai`
--

INSERT INTO `ma_dien_thoai` (`id`, `maxacthuc`, `is_hoatdong`, `created_at`, `updated_at`) VALUES
(11, '760712', 0, '2023-06-10 18:05:51', '2023-06-10 18:05:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_12_162342_create_categories_table', 2),
(6, '2022_06_12_162532_create_locations_table', 3),
(8, '2022_06_12_163256_create_options_table', 4),
(9, '2022_06_12_163613_create_admins_table', 5),
(10, '2022_06_12_163809_create_images_table', 6),
(11, '2022_06_12_162740_create_rooms_table', 7),
(12, '2022_08_21_033748_create_codes_table', 8),
(13, '2022_10_26_072922_create_recharge_history_table', 9),
(14, '2022_10_26_072947_create_payment_history_table', 9),
(15, '2022_10_26_145748_create_menus_table', 10),
(16, '2022_10_26_145810_create_articles_table', 10),
(17, '2023_06_07_101247_create_test_id_table', 11),
(18, '2023_06_11_001623_create__ma_dien_thoai_table', 12),
(19, '2023_06_11_002506_create_ma_dien_thoai_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodienthoai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anhdaidien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sodukhadung` bigint(20) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `ten`, `email`, `sodienthoai`, `facebook`, `anhdaidien`, `sodukhadung`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(17, 'Vũ Tuấn Anh', 'vutuananh0949@gmail.com', '0949083443', NULL, NULL, 0, NULL, '$2y$10$zIsNK681dWF7A5zX4pE3TuRzOK61ToV4XiXksweVdZNfyAdXETFY2', NULL, '2024-02-23 13:02:53', '2024-02-25 15:45:45'),
(18, 'Vũ Tuấn Anh', 'vutuananh01@gmail.com', '0949083414', NULL, '2024-04-17__dsc02763.jpg', 104650471, NULL, '$2y$10$cf1Fc7pAaTelNdbyp8DQeOMjkVgmrvxiWIReDZLyGI5zCQWUhtX9W', NULL, '2024-02-25 13:52:11', '2024-04-16 17:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anhdaidien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qhuyen_id` bigint(20) NOT NULL DEFAULT 0,
  `phuongxa_id` bigint(20) NOT NULL DEFAULT 0,
  `gia` bigint(20) NOT NULL DEFAULT 0,
  `khoanggia` tinyint(4) NOT NULL DEFAULT 1,
  `khoangkhuvuc` tinyint(4) NOT NULL DEFAULT 1,
  `trangthai` tinyint(4) NOT NULL DEFAULT 1,
  `khuvuc` int(11) NOT NULL DEFAULT 0,
  `sophong` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chitietdiachi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hot` tinyint(4) NOT NULL DEFAULT 0,
  `lydo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `danhmuc_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `thoigian_batdau` date DEFAULT NULL,
  `thoigian_ketthuc` date DEFAULT NULL,
  `xacthuc_id` bigint(20) NOT NULL DEFAULT 0,
  `dichvu_hot` tinyint(4) NOT NULL DEFAULT 0,
  `map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) NOT NULL DEFAULT 0,
  `video_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'link yt',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`id`, `ten`, `slug`, `anhdaidien`, `mota`, `qhuyen_id`, `phuongxa_id`, `gia`, `khoanggia`, `khoangkhuvuc`, `trangthai`, `khuvuc`, `sophong`, `chitietdiachi`, `noidung`, `hot`, `lydo`, `danhmuc_id`, `thoigian_batdau`, `thoigian_ketthuc`, `xacthuc_id`, `dichvu_hot`, `map`, `subject_id`, `video_link`, `created_at`, `updated_at`) VALUES
(95, 'Phòng trọ mới xây, giờ tự do, hầm xe, thang máy', 'phong-tro-moi-xay-gio-tu-do-ham-xe-thang-may', '2024-02-25__hostel-1.jpg', '<p>ApasHome cho thuê phòng trọ, tòa nhà thang máy, giờ giấc tự do</p><p>Vị trí:</p><p>Chi nhánh 1: 325/12 Đường Lê Văn Quới, Phường Bình Trị Đông, quận Bình Tân( ĐƯỜNG HẺM XE TẢI )</p><p>Chi nhánh 2: 431a Đường Lê Văn Quới, Phường Bình Trị Đông A, Quận Bình Tân</p><p>Sát chợ Lê Văn Quới, 1km đến ngã tư bốn xã, 2km đến Khu công nghiệp Dimsum, KDL Đầm Sen, 20 phút di chuyển về Quận 10, 11, 5 và các tiện ích xung quanh đầy đủ&nbsp;</p><p>Giá phòng:</p><p>- 2.600.000đ/tháng. (tiện nghi:máy lạnh, gác, kệ bếp, toilet).</p><p>- 3.100.000/tháng. (tiện nghi:máy lạnh tủ âm tường, kệ bếp, toilet).</p><p>- 3.500.000/tháng ( tiện nghi:gác, máy lạnh tủ âm tường, kệ bếp, toilet).</p><p>- Đặt cọc phòng 1 tháng.</p><p>+ Dịch vụ:</p><p>- Điện: 3.8k/KWH.</p><p>- Nước máy: 25k/m3.</p><p>- Wifi, rác, vệ sinh, thang máy: 150k / phòng/ tháng.</p><p>- Xe máy: 100k/ xe / tháng.</p><p>- Liên hệ: Mr.Tuấn( call, zalo)</p>', 110, 111, 3000000, 4, 3, 3, 32, 'C1T82', 'C1T82, phường An Bình, Ninh Kiều, Cần Thơ', NULL, 0, NULL, 21, '2024-02-25', '2024-03-04', 18, 0, 'https://maps.app.goo.gl/L1woVXfZHgRghs2PA', 0, NULL, '2024-02-25 14:52:44', '2024-03-29 13:29:03'),
(96, 'Nhà Trọ Sạch Sẽ - TRỌ CÓ GÁC GẦN BẾN XE MIỀN TÂY', 'nha-tro-sach-se-tro-co-gac-gan-ben-xe-mien-tay', '2024-02-25__hostel-5.jpg', '<p>NHÀ TRỌ SẠCH SẼ - LUÔN SẠCH SẼ, LUÔN GỌN GÀNG</p><p>Phòng có cửa sổ hành lang</p><p>Phòng mới như hình ảnh, gần Đại học Công thương, khu công nghiệp Tân Bình/Vĩnh Lộc/ Bình Chánh, bến xe miền Tây,...</p><p>Tiện ích:</p><p>- Cổng vân tay, camera 24/24,</p><p>- Nhà xe rộng rãi</p><p>- Nhân viên trực tại chổ</p><p>- Nước uống free, khu phơi quần áo, máy giặt tính tiền giá rẻ,</p><p>- Sân thượng</p><p>Địa chỉ: 5E Đường số 1, Phường Bình Hưng Hòa A, Quận Bình Tân</p>', 107, 109, 1500000, 2, 2, 3, 24, NULL, '5E Đường số 1, Hưng Phú, Cái Răng', NULL, 0, NULL, 21, '2024-04-04', '2024-04-24', 18, 4, 'https://maps.app.goo.gl/L1woVXfZHgRghs2PA', 0, NULL, '2024-02-25 14:59:57', '2024-04-03 17:20:19'),
(97, 'Cho thuê phòng trọ mini có cửa sổ thoáng', 'cho-thue-phong-tro-mini-co-cua-so-thoang', '2024-02-25__hostel-6.jpg', '<p>Chính chủ cho thuê phòng trọ đường Trần Xuân Soạn</p><p>Phòng sạch sẽ , thoáng</p><p>Có bếp và toilet chung</p><p>Dọn dẹp vệ sinh 2l / 1 tuần</p><p>Có máy giặt chung</p><p>Giá rẻ</p>', 105, 106, 900000, 1, 1, 3, 15, 'h122', 'h122, hẻm 32, Bình Thủy, An Thới', NULL, 0, NULL, 24, '2024-02-25', '2024-03-06', 18, 0, 'https://maps.app.goo.gl/L1woVXfZHgRghs2PA', 0, NULL, '2024-02-25 15:09:21', '2024-03-21 13:28:45'),
(98, 'Nhà trọ giá rẻ Thiên Ân đầy đủ tiện nghi', 'nha-tro-gia-re-thien-an-day-du-tien-nghi', '2024-02-25__hostel-10.jpg', '<p>Nhà trọ giá rẻ đầy đủ tiện nghi</p><p>Ra vào vân tay</p><p>Không chung chủ</p><p>Điện 4000kw</p><p>Xe free,&nbsp;Wifi free</p><p>Nước nóng lạnh 100K/phòng/tháng</p>', 110, 112, 2500000, 3, 3, 3, 30, '223', '223, Ninh Kiều, Hưng Lợi, Cần Thơ', NULL, 0, NULL, 21, '2024-04-04', '2024-04-23', 18, 3, 'https://maps.app.goo.gl/L1woVXfZHgRghs2PA', 0, NULL, '2024-02-25 15:16:10', '2024-04-03 17:20:09'),
(99, 'Cho thuê nhà nguyên căn sạch sẽ, thoáng mát, giá chỉ 9.5tr/tháng', 'cho-thue-nha-nguyen-can-sach-se-thoang-mat-gia-chi-95trthang', '2024-02-25__hostel-15.jpg', '<p>CHO THUÊ NHÀ NGUYÊN CĂN NHÀ ĐẸP GIÁ RẺ</p><p>Cho thuê nhà nguyên căn, hai tầng, 3 ban công, 3 phòng ngủ, 2 toilet, bếp bàn ăn và phòng khách.</p><p>Địa chỉ: 55, hẻm 3, Bình Thủy, An Thới, Cần Thơ</p><p>Giá: 9.500.000</p><p>Đường xe hơi</p>', 105, 106, 9500000, 6, 7, 3, 90, '55', '55, hẻm 3, Bình Thủy, An Thới, Cần Thơ', NULL, 0, NULL, 22, '2024-04-04', '2024-04-24', 18, 1, 'https://maps.app.goo.gl/L1woVXfZHgRghs2PA', 0, NULL, '2024-02-25 15:18:30', '2024-04-03 17:20:03'),
(100, 'Tìm Nam ở ghép ưu tiên dân văn phòng, sinh viên, người đi làm', 'tim-nam-o-ghep-uu-tien-dan-van-phong-sinh-vien-nguoi-di-lam', '2024-02-25__hostel-20.jpg', '<p>Tìm Nam ở ghép không hút thuốc, ưu tiên dân văn phòng, sinh viên, người đi làm ở Thạnh Lộc 15</p><p>Giá : 1.000.000đ/tháng</p><p>Mô tả phòng (đúng phòng này, để không mất thời gian của 2 bên, cam kết thông tin và hình thật 100%, xem hình đính kèm):</p><p>Phòng hơn 30m2, ở lầu 2</p><p>Phòng chỉ cho tối đa 3 nam</p><p>Phòng rộng, đẹp, sạch sẽ</p><p>Toilet riêng trong phòng, có bồn tắm</p><p>Giờ giấc tự do thoải mãi</p><p>Có cửa sổ, gió thoáng mát phong thủy tốt</p><p>Có wifi mạnh</p><p>Có nhà để xe rộng rãi, an ninh, camera giám sát</p><p>Khu đông dân cư dân trí, an ninh</p><p>Gần cafe sân bóng goal</p>', 107, 108, 700000, 1, 2, 3, 29, '44/33', '44/33, hẻm 23,  Ba Láng, Cần Thơ, Cái Răng', NULL, 0, NULL, 24, '2024-02-25', '2024-03-08', 18, 0, 'https://maps.app.goo.gl/L1woVXfZHgRghs2PA', 0, NULL, '2024-02-25 15:23:42', '2024-04-16 15:18:11'),
(101, 'Cho thuê nhiều văn phòng: 50m2, 100m2, 250m2, 235m2, 500m2 Vinhomes Grand Park.', 'cho-thue-nhieu-van-phong-50m2-100m2-250m2-235m2-500m2-vinhomes-grand-park', '2024-02-25__hostel-21.jpg', '<p>CHO THUÊ NHIỀU VĂN PHÒNG 50M2 100M2, 250M2, 235M2, 500M2 VINHOMES GRAND PARK 0933.777.844</p><p>Em có sẵn hơn 300 văn phòng dành cho doanh nghiệp của anh chị tại khu vực Vinhomes Grand Park, phường Long Bình,TP Thủ Đức ( Quận 9 cũ).</p><p>Liên hệ: 0933.777.844</p><p>Thông tin chi tiết:</p><p>+ Kích thước: Ngang 7mx12m, xây dựng 1 trệt 4 lầu + sân thượng</p><p>+ Diện tích 1 sàn 49m2, tổng 5 sàn 235m2. Hoàn thiện 5 tầng</p><p>+ Có thang máy</p><p>+ Sử dụng nguyên căn</p><p>+ Chỗ để xe thỏa mái.</p><p>+ Điện nước riêng</p><p>+ Giá cho thuê 25.000.000đ/tháng</p><p>Cùng với các loại hình diện tích đáp ứng các tiêu chí:</p><p>Với đầy các loại hình diện tích đáp ứng các tiêu chí:</p><p>Tiện nghi Vị trí đẹp</p><p>Không gian riêng tư An ninh</p><p>Chỗ để xe thỏa mái Điện nước riêng</p><p>Phí quản lý rẻ Được đăng ký địa chỉ kinh doanh</p><p>- Diện tích 45m2 giá 5.000.000đ/tháng</p><p>- Diện tích 70m2 giá 8.000.000đ/tháng</p><p>- Diện tích 100m2 giá 10.000.000đ/tháng</p><p>- Diện tích 144m2 Giá 12.000.000đ/tháng</p><p>- Diện tích sàn 235m2 giá 25.000.000đ/tháng (nhà 5 tầng)</p><p>- Diện tích sàn 450m2 giá 30.000.000đ/tháng (nhà 5 tầng)</p><p>- Diện tích sàn 500m2 giá 35.000.000đ/tháng (nhà 5 tầng)</p><p>- Diện tích sàn 600m2 giá 40.000.000đ/tháng (có nhà 3 tầng, có nhà 5 tầng)</p><p>***Ngoài ra, chúng tôi còn có nhiều loại hình sản phẩm khác, phong phú về nội thất cơ bản, nội thất đầy đủ tại các căn hộ, căn shop, nhà phố và biệt thự tại khu đô thị Vinhomes Grand Park.</p><p>Sự phát triển từng ngày của khu Vinhomes Grand Park với hơn 100.000 cư dân, còn rất nhiều mảnh ghép đang cần anh chị tới bổ sung.</p><p>/-heart Xin chúc quý anh chị, quý doanh nghiệp ngày càng phát triển và thành công</p><p>Liên hệ xem nhà: 0933.777.844 Mr Sinh</p>', 105, 106, 40000000, 8, 10, -2, 300, '22', '22, hẻm 1, An Thới, Bình Thủy, Cần Thơ', NULL, 0, NULL, 23, NULL, '2024-03-10', 18, 0, 'https://maps.app.goo.gl/L1woVXfZHgRghs2PA', 0, NULL, '2024-02-25 15:42:50', '2024-04-03 16:44:21'),
(107, 'Nhà Trọ Cao Cấp 30m2, Full Nội Thất, nằm sau lưng Đại Học Kỹ thuật - Công nghệ Cần Thơ, hẻm OTO thoải mái', 'nha-tro-cao-cap-30m2-full-noi-that-nam-sau-lung-dai-hoc-ky-thuat-cong-nghe-can-tho-hem-oto-thoai-mai', '2024-04-04__cantho-hostel-1.png', 'CHO THUÊ PHÒNG TRỌ CAO CẤP, 1 TRỆT 1 LỬNG CỰC ĐẸP, AN KHÁNH, NINH KIỀU-NHÀ FULL NỘI THẤT\r\n\r\nGIÁ: 4,2 triệu/căn\r\n\r\n- Mỗi căn đều 1 Trệt 1 Lửng 30m2 rất rộng rãi, 1 cửa chính, 2 cửa sổ, Màn cửa, 1 Tủ Bếp, 1 WC, Nhà dán gạch cao 2m, trần thạch cao rất sạch sẽ..\r\n\r\n- có lối đi chung 3m, xe tải nhỏ vào tới phòng..\r\n\r\nNhà Full Nội Thất: MÁY LẠNH, MÁY GIẶT, TỦ LẠNH, SOFA, NỆM, TỦ, MÁY NÓNG LẠNH, KỆ..\r\n\r\nCổng rào vân tay, ra vào tự do..\r\n\r\nCó nhà để xe riêng\r\n\r\n- Vị trí: C1T82, hẻm 40, đường Võ Trường Toản, phường An Hòa, quận Ninh Kiều, Cần Thơ sau Đại Học Kỹ thuật - Công nghệ Cần Thơ\r\n\r\nNhà nằm trục Chính Hẻm 6m\r\n\r\n- Cọc 1 tháng, Đóng tiền đầu tháng\r\n\r\n- Hợp đồng trên 6 tháng', 110, 134, 1000000, 2, 3, 3, 40, 'C1T82', 'C1T82, hẻm 40, đường Võ Trường Toản, phường An Hòa, quận Ninh Kiều, Cần Thơ', NULL, 0, NULL, 21, '2024-04-04', '2024-04-24', 18, 5, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.638429576327!2d105.76524067541195!3d10.046665472229249!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0880f08006ffb%3A0x9a745510330faf4e!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBL4bu5IHRodeG6rXQgLSBDw7RuZyBuZ2jhu4cgQ-G6p24gVGjGoQ!5e0!3m2!1svi!2s!4v1712163686821!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 0, NULL, '2024-04-03 17:03:17', '2024-04-03 17:09:15'),
(108, 'Nhà trọ Ngọc Ngân  47H/7 hẻm 12B Nguyễn Truyền Thanh, Quận Bình Thuỷ, Cần Thơ  Khu an ninh, sạch sẽ  Giá Bình Dân  LH: 0969343814', 'nha-tro-ngoc-ngan-47h7-hem-12b-nguyen-truyen-thanh-quan-binh-thuy-can-tho-khu-an-ninh-sach-se-gia-binh-dan-lh-0969343814', '2024-04-04__cantho-hostel-2.jpg', '<p>Nhà trọ Ngọc Ngân</p><p>47H/7 hẻm 12B Nguyễn Truyền Thanh, Quận Bình Thuỷ, Cần Thơ</p><p>Khu an ninh, sạch sẽ</p><p>Giá Bình Dân</p><p>LH: 0969343814</p>', 105, 106, 1200000, 2, 4, 3, 50, '112', '47H/7 hẻm 12B Nguyễn Truyền Thanh, Quận Bình Thuỷ, Cần Thơ', NULL, 0, NULL, 21, '2024-04-04', '2024-04-24', 18, 4, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.638429576327!2d105.76524067541195!3d10.046665472229249!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0880f08006ffb%3A0x9a745510330faf4e!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBL4bu5IHRodeG6rXQgLSBDw7RuZyBuZ2jhu4cgQ-G6p24gVGjGoQ!5e0!3m2!1svi!2s!4v1712163686821!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 0, NULL, '2024-04-03 17:05:39', '2024-04-03 17:09:50'),
(109, 'Phòng trọ giá rẻ, 1tr1/tháng, ngay khu Yên Hòa, Cái Răng', 'phong-tro-gia-re-1tr1thang-ngay-khu-yen-hoa-cai-rang', '2024-04-04__cantho-hostel-3.png', '<p>Đang trống 2 phòng giá thuê 1tr1/tháng tại 33/4 Yên Hoà, Đường Nguyễn Việt Dũng, phường Lê Bình, quận Cái Răng</p><p>Liên hệ: 0907223760</p><p>Cửa Hàng Sơn Thịnh Phát - Trọ Thịnh Phát</p>', 107, 108, 1500000, 2, 5, 3, 60, '33/4', '33/4 Yên Hoà, Đường Nguyễn Việt Dũng, phường Lê Bình, quận Cái Răng', NULL, 0, NULL, 21, '2024-04-04', '2024-04-24', 18, 1, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.638429576327!2d105.76524067541195!3d10.046665472229249!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0880f08006ffb%3A0x9a745510330faf4e!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBL4bu5IHRodeG6rXQgLSBDw7RuZyBuZ2jhu4cgQ-G6p24gVGjGoQ!5e0!3m2!1svi!2s!4v1712163686821!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 0, NULL, '2024-04-03 17:08:42', '2024-04-03 17:09:54'),
(110, 'Phòng trọ ký túc xá đầy đủ tiện nghi ở Thành Thái', 'phong-tro-ky-tuc-xa-day-du-tien-nghi-o-thanh-thai', '2024-04-04__cantho-hostel-5.jpg', '<p>KTX HAPPY HOUSE :</p><p>- Giá : 1.200.000 đồng</p><p>- Địa chỉ: 163/8 Thành Thái,Phường 14,Quận 10</p><p>- Giá thuê đã bao gồm các tiện ích: điện, nước, wifi, thang máy, nệm, máy lạnh,nhà WC,....</p><p>- Phòng có ban công thoáng mát</p><p>- Bếp chung được trang bi đầy đủ dụng cụ: bếp, bồn rửa chén, tủ lạnh, ...</p><p>- Máy giặt chung được trang bị sẵn</p><p>&nbsp; Địa Chỉ :</p><p>Cn 1: 52 Nguyễn giản thanh,p15,Q10</p><p>Cn 2: 163/8 Thành thái ,p14,Q10</p><p>Cn 3: 17/1A,Hồ văn huê ,p9,Phú nhuận</p><p>0911067971 ( Nhi )</p>', 113, 146, 3000000, 4, 7, 3, 90, '22', '163/8 Thành Thái, Cần Thơ', NULL, 0, NULL, 21, '2024-04-04', '2024-04-24', 18, 1, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.638429576327!2d105.76524067541195!3d10.046665472229249!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0880f08006ffb%3A0x9a745510330faf4e!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBL4bu5IHRodeG6rXQgLSBDw7RuZyBuZ2jhu4cgQ-G6p24gVGjGoQ!5e0!3m2!1svi!2s!4v1712163686821!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 0, NULL, '2024-04-03 17:18:28', '2024-04-03 17:19:56'),
(111, 'Mặt tiền Đường Nguyễn Văn Linh vị trí sầm uất phù hợp kinh doanh', 'mat-tien-duong-nguyen-van-linh-vi-tri-sam-uat-phu-hop-kinh-doanh', NULL, '<p>CHO THUÊ NHÀ MẶT TIỀN KINH DOANH GIÁ TỐT ĐƯỜNG NGUYỄN VĂN LINH, CẠNH CHỢ BÀ BỘ - KINH DOANH TỰ DO</p><p>Giá thuê: 8 triệu / tháng - Cọc 2 tháng - hợp đồng từ 1 năm.</p><p>Diện tích: 40m2 ( 1 trệt, 1 lững, 1 wc)</p><p>Tiện ích xung quanh đầy đủ</p><p>Vị trí ngay chợ cực kì sầm uất, an khánh, ninh kiều</p><p>311</p>', 110, 135, 2000000, 3, 7, 3, 89, '22', 'Nguyễn Văn Linh, Phường An Khánh, Quận Ninh Kiều, Cần Thơ', NULL, 0, NULL, 22, '2024-04-04', '2024-04-24', 18, 5, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.638429576327!2d105.76524067541195!3d10.046665472229249!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0880f08006ffb%3A0x9a745510330faf4e!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBL4bu5IHRodeG6rXQgLSBDw7RuZyBuZ2jhu4cgQ-G6p24gVGjGoQ!5e0!3m2!1svi!2s!4v1712163686821!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 0, NULL, '2024-04-03 17:22:06', '2024-04-03 17:22:25'),
(112, 'Mặt tiền Đường Nguyễn Văn Linh vị trí sầm uất phù hợp kinh doanh', 'mat-tien-duong-nguyen-van-linh-vi-tri-sam-uat-phu-hop-kinh-doanh', '2024-04-04__cantho-hostel-7.jpg', '<p>CHO THUÊ NHÀ MẶT TIỀN KINH DOANH GIÁ TỐT ĐƯỜNG NGUYỄN VĂN LINH, CẠNH CHỢ BÀ BỘ - KINH DOANH TỰ DO</p><p>Giá thuê: 8 triệu / tháng - Cọc 2 tháng - hợp đồng từ 1 năm.</p><p>Diện tích: 40m2 ( 1 trệt, 1 lững, 1 wc)</p><p>Tiện ích xung quanh đầy đủ</p><p>Vị trí ngay chợ cực kì sầm uất, an khánh, ninh kiều</p><p>311</p>', 110, 135, 2900000, 3, 9, -2, 120, '23', 'Nguyễn Văn Linh, Phường An Khánh, Quận Ninh Kiều, Cần Thơ', NULL, 0, NULL, 23, NULL, NULL, 18, 0, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.638429576327!2d105.76524067541195!3d10.046665472229249!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0880f08006ffb%3A0x9a745510330faf4e!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBL4bu5IHRodeG6rXQgLSBDw7RuZyBuZ2jhu4cgQ-G6p24gVGjGoQ!5e0!3m2!1svi!2s!4v1712163686821!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 0, NULL, '2024-04-03 17:44:21', '2024-04-16 15:18:08'),
(115, 'NHÀ TRỌ CAO CẤP 30M2, FULL NỘI THẤT, NẰM SAU LƯNG ĐẠI HỌC KỸ THUẬT - CÔNG NGHỆ CẦN THƠ, HẺM Ô TÔ ĐI THOẢI MÁI', 'nha-tro-cao-cap-30m2-full-noi-that-nam-sau-lung-dai-hoc-ky-thuat-cong-nghe-can-tho-hem-o-to-di-thoai-mai', '2024-04-17__cantho-hostel-6.jpg', '<p><strong>Nội dung:</strong><br>NHÀ TRỌ SẠCH SẼ - LUÔN SẠCH SẼ, LUÔN GỌN GÀNG</p><p>Phòng có cửa sổ hành lang</p><p>Phòng mới như hình ảnh, gần&nbsp;Trường Đại học Kỹ thuật – Công nghệ Cần Thơ, cách trường 200m</p><p><strong>Tiện ích:</strong></p><p>- Gần chợ Trần Việt Châu, chợ An Hòa</p><p>- Gần các nhà thuốc: Long Châu, pharmacity</p><p>-&nbsp;Cổng vân tay, camera 24/24,</p><p>- Nhà xe rộng rãi</p><p>- Nhân viên trực tại chổ</p><p>- Nước uống free, khu phơi quần áo, máy giặt tính tiền giá rẻ,</p><p>- Sân thượng</p>', 110, 134, 1000000, 2, 4, 3, 50, 'c1t82', 'C1T82, hẻm 40, đường Võ Trường Toản, phường An Hòa, quận Ninh Kiều, Cần Thơ', NULL, 0, NULL, 21, '2024-04-17', '2024-05-05', 18, 5, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.6384937437037!2d105.76524067479426!3d10.046660190061154!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0880f08006ffb%3A0x9a745510330faf4e!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBL4bu5IHRodeG6rXQgLSBDw7RuZyBuZ2jhu4cgQ-G6p24gVGjGoQ!5e0!3m2!1svi!2s!4v1713280257641!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 0, NULL, '2024-04-16 17:13:44', '2024-04-16 17:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `quantrivien`
--

CREATE TABLE `quantrivien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quantrivien`
--

INSERT INTO `quantrivien` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '$2a$12$aBl9RYTJXMy6rbief1KNHOTCUCRAgm/xoTzytdv74vxoNHWdS494m', '2022-10-27 02:43:18', '2022-10-27 02:43:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `diachi`
--
ALTER TABLE `diachi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `locations_slug_unique` (`slug`);

--
-- Indexes for table `hinhanh_ct`
--
ALTER TABLE `hinhanh_ct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lichsu_naptien`
--
ALTER TABLE `lichsu_naptien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recharge_history_code_unique` (`ma`);

--
-- Indexes for table `lichsu_thanhtoan`
--
ALTER TABLE `lichsu_thanhtoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ma_dien_thoai`
--
ALTER TABLE `ma_dien_thoai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ma_dien_thoai_maxacthuc_unique` (`maxacthuc`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`sodienthoai`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhmuc_id` (`danhmuc_id`);

--
-- Indexes for table `quantrivien`
--
ALTER TABLE `quantrivien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `diachi`
--
ALTER TABLE `diachi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `hinhanh_ct`
--
ALTER TABLE `hinhanh_ct`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `lichsu_naptien`
--
ALTER TABLE `lichsu_naptien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `lichsu_thanhtoan`
--
ALTER TABLE `lichsu_thanhtoan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `ma_dien_thoai`
--
ALTER TABLE `ma_dien_thoai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `phong`
--
ALTER TABLE `phong`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `quantrivien`
--
ALTER TABLE `quantrivien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
