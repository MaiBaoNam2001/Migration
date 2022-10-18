DO
$$
    BEGIN
        INSERT INTO project (id, name, area)
        VALUES ('6d1c2ca7', 'Sunny Garden', 'Duy Hải, Duy Xuyên, Quảng Nam'),
               ('5123c665', 'The Grand Sentosa', 'Phước Kiển, Nhà Bè'),
               ('e7c28635', 'The Privia', 'An Lạc, Bình Tân'),
               ('796ac59b', 'The Classia', 'Phú Hữu, quận 9'),
               ('f7ffb071', 'Lumiere Boulevard', 'Long Thanh Mỹ, quận 9'),
               ('b92c71cc', 'Stella Residence', 'phường 1, quận 5'),
               ('d911d5c0', 'Zenity', 'Cầu Kho, quận 1'),
               ('10ad4239', 'The Rivus', 'Long Bình, quận 9'),
               ('ba6d7db1', 'The Beverly Bolari', 'Long Bình, quận 9'),
               ('ba6d7db1', 'The Beverly Solari', 'Long Bình, quận 9'),
               ('63298b16', 'Lancaster Legacy', 'Nguyễn Cư Trinh, quận 1')
        ON CONFLICT DO NOTHING;

        INSERT INTO building (id, name, project_id)
        VALUES ('d10819dd', 'Skiba', '6d1c2ca7'),
               ('da6f6593', 'Demizz', '6d1c2ca7'),
               ('416396d4', 'Fivechat', '6d1c2ca7'),
               ('5efe0986', 'Myworks', '5123c665'),
               ('a01de246', 'Dynazzy', '5123c665'),
               ('714b9776', 'Jabbercube', '5123c665'),
               ('c030fe99', 'Thoughtsphere', 'e7c28635'),
               ('005743e3', 'Jaxworks', 'e7c28635'),
               ('4cd4fe68', 'Fadeo', 'e7c28635'),
               ('bd609db6', 'Meemm', '796ac59b'),
               ('bca4a091', 'Tazzy', '796ac59b'),
               ('7d899a7c', 'Devify', '796ac59b'),
               ('994d4048', 'Gigaclub', 'f7ffb071'),
               ('6e17ba0d', 'Realcube', 'f7ffb071'),
               ('181fd50b', 'Gabtune', 'f7ffb071'),
               ('fbd7336c', 'Thoughtstorm', 'b92c71cc'),
               ('e5232320', 'Thoughtblab', 'b92c71cc'),
               ('9145f013', 'Yata', 'b92c71cc'),
               ('40460e43', 'Jaxbean', 'd911d5c0'),
               ('40654afc', 'Mynte', 'd911d5c0'),
               ('f2c1d7a7', 'Rooxo', 'd911d5c0'),
               ('4770a0a4', 'Youopia', '10ad4239'),
               ('1a087b7a', 'Aivee', '10ad4239'),
               ('7a55f0b7', 'Wikivu', '10ad4239'),
               ('0fb63d7a', 'Twitterlist', 'ba6d7db1'),
               ('9205a462', 'Skipfire', 'ba6d7db1'),
               ('32755c05', 'Flashpoint', 'ba6d7db1'),
               ('80059083', 'Skipfire', '63298b16'),
               ('ce97fbb2', 'Dabfeed', '63298b16'),
               ('90adda2a', 'Kwinu', '63298b16')
        ON CONFLICT DO NOTHING;

        INSERT INTO floor(id, number, building_id)
        VALUES ('93cce996', 1, 'd10819dd'),
               ('bbd69854', 2, 'd10819dd'),
               ('369f2698', 3, 'd10819dd'),
               ('403ebe28', 4, 'd10819dd'),
               ('bc630f34', 5, 'd10819dd'),
               ('cb49ebbc', 1, 'da6f6593'),
               ('cf609b92', 2, 'da6f6593'),
               ('a62b5d14', 3, 'da6f6593'),
               ('37de0a80', 4, 'da6f6593'),
               ('efc5e50e', 5, 'da6f6593'),
               ('134f736c', 1, '416396d4'),
               ('416a798d', 2, '416396d4'),
               ('3b217bc0', 3, '416396d4'),
               ('97f5decf', 4, '416396d4'),
               ('ced00d83', 5, '416396d4'),
               ('10395c84', 1, '5efe0986'),
               ('9005fa25', 2, '5efe0986'),
               ('538c522b', 3, '5efe0986'),
               ('dd1b585f', 4, '5efe0986'),
               ('dde808f0', 5, '5efe0986'),
               ('19647f79', 1, 'a01de246'),
               ('9647f799', 2, 'a01de246'),
               ('fd437d09', 3, 'a01de246'),
               ('bca3f695', 4, 'a01de246'),
               ('50c77bc1', 5, 'a01de246'),
               ('82be9152', 1, '714b9776'),
               ('0fedafc2', 2, '714b9776'),
               ('3d79a2aa', 3, '714b9776'),
               ('8e190802', 4, '714b9776'),
               ('35d92b03', 5, '714b9776')
        ON CONFLICT DO NOTHING;

        INSERT INTO apartment(id, name, floor_id)
        VALUES ('1118eae6', 'Phòng số 101', '93cce996'),
               ('10c98f0e', 'Phòng số 102', '93cce996'),
               ('1e49dae6', 'Phòng số 103', '93cce996'),

               ('1254247f', 'Phòng số 201', 'bbd69854'),
               ('2898f0b4', 'Phòng số 202', 'bbd69854'),
               ('19c572b9', 'Phòng số 203', 'bbd69854'),

               ('aa919090', 'Phòng số 301', '369f2698'),
               ('bd8ce65c', 'Phòng số 302', '369f2698'),
               ('cea3f932', 'Phòng số 303', '369f2698'),

               ('96088f13', 'Phòng số 401', '403ebe28'),
               ('4e98496a', 'Phòng số 402', '403ebe28'),
               ('70483dd2', 'Phòng số 403', '403ebe28'),

               ('e0ef8d9b', 'Phòng số 501', 'bc630f34'),
               ('3284d111', 'Phòng số 502', 'bc630f34'),
               ('bc6c6ab4', 'Phòng số 503', 'bc630f34'),


               ('3b8094e8', 'Phòng số 101', 'cb49ebbc'),
               ('5b92accc', 'Phòng số 102', 'cb49ebbc'),
               ('84e63a5f', 'Phòng số 103', 'cb49ebbc'),

               ('46d16f84', 'Phòng số 201', 'cf609b92'),
               ('034c4302', 'Phòng số 202', 'cf609b92'),
               ('d3d62792', 'Phòng số 203', 'cf609b92'),

               ('258079fa', 'Phòng số 301', 'a62b5d14'),
               ('2e79e1f5', 'Phòng số 302', 'a62b5d14'),
               ('2c904b04', 'Phòng số 303', 'a62b5d14'),

               ('7be6e1f3', 'Phòng số 401', '37de0a80'),
               ('8dbce786', 'Phòng số 402', '37de0a80'),
               ('b76a0c68', 'Phòng số 403', '37de0a80'),

               ('08a580cf', 'Phòng số 501', 'efc5e50e'),
               ('eb521416', 'Phòng số 502', 'efc5e50e'),
               ('33336634', 'Phòng số 503', 'efc5e50e')
        ON CONFLICT DO NOTHING;

        INSERT INTO customer (id, name, date_of_birth, gender, phone, email, address, type, identity_card)
        VALUES ('e858ecff', 'Nguyễn Nhật Phú', '2001-07-22', 'Nam', '0394857697', 'nhatphu.nguyen@gmail.com', 'Quận 12',
                'cư dân', null),
               ('3bb5def1', 'Lê Thị Bảo Ngọc', '2005-07-10', 'Nữ', '0365464566', 'baongoc.lethi@gmail.com', 'Quận 1',
                'cư dân',
                null),
               ('4d44389f', 'Nguyễn Ngọc Lam', '2010-04-20', 'Nam', '0354657787', 'ngoclam.nguyen@gmail.com', 'Quận 3',
                'cư dân',
                null),
               ('47cae4e7', 'Đỗ Duy Nam', '2012-01-17', 'Nam', '0391157697', 'duynam.do@gmail.com', 'Thủ Đức',
                'khách vãng lai',
                null),
               ('473c2151', 'Hồ Bảo Linh', '2001-10-10', 'Nữ', '0444857697', 'baolinh.ho@gmail.com', 'Đồng Nai',
                'cư dân',
                null),
               ('efe6a422', 'Cao Đức Thắng', '2000-12-01', 'Nam', '0287532155', 'ducthang.cao@gmail.com', 'Đồng Tháp',
                'cư dân',
                null),
               ('87239f39', 'Đỗ Bảo Duy', '1990-10-09', 'Nam', '0289632542', 'baoduy.do@gmail.com', 'Đà Lạt', 'cư dân',
                null),
               ('a72c065d', 'Phan Thị Kim Liên', '2002-05-20', 'Nữ', '0444854697', 'kimlien.phanthi@gmail.com',
                'Đồng Nai',
                'cư dân',
                null),
               ('81400093', 'Cao Đức Thắng', '1991-10-04', 'Nam', '0394457697', 'caothang@gmail.com', 'Đồng Tháp',
                'cư dân',
                null),
               ('6d1c2ca7', 'Đỗ Bảo Duy', '1995-10-10', 'Nam', '0394857497', 'baoduy@gmail.com', 'Đà Lạt',
                'khách vãng lai',
                null)
        ON CONFLICT DO NOTHING;

        INSERT INTO parking_area(id, name, project_id)
        VALUES ('7cd3214e', 'Bãi đỗ xe Sunny Garden', '6d1c2ca7'),
               ('9603463c', 'Bãi đỗ xe the Grand Sentosa', '5123c665'),
               ('17e9335b', 'Bãi đỗ xe the Privia', 'e7c28635'),
               ('8659d747', 'Bãi đỗ xe the Classia', '796ac59b'),
               ('3bdd54ef', 'Bãi đỗ xe Lumiere Boulevard', 'f7ffb071'),
               ('b6c67b53', 'Bãi đỗ xe Stella Residence', 'b92c71cc'),
               ('1f1e46d5', 'Bãi đỗ xe Zenity', 'd911d5c0'),
               ('c7f03024', 'Bãi đỗ xe the Beverly Solari', '10ad4239'),
               ('8ecf3157', 'Bãi đỗ xe the Rivus', 'ba6d7db1'),
               ('f0261cd0', 'Bãi đỗ xe Lancaster Legacy', '63298b16')
        ON CONFLICT DO NOTHING;

        INSERT INTO parking_type(id, name, price, unit)
        VALUES (1, 'Theo giờ', 10000, 'Giờ'),
               (2, 'Theo tháng', 300000, 'Tháng'),
               (3, 'Theo ngày', 50000, 'Ngày')
        ON CONFLICT DO NOTHING;

        INSERT INTO role(code, name)
        VALUES ('ROLE_SUPER_ADMIN', 'Super Admin'),
               ('ROLE_ADMIN', 'Admin'),
               ('ROLE_MANAGER', 'Manager'),
               ('ROLE_SECURITY', 'Security'),
               ('ROLE_CUSTOMER', 'Customer')
        ON CONFLICT DO NOTHING;

        INSERT INTO users(username, phone, email, password, role_code)
        VALUES ('dinhhuy.nguyen', '0287563254', 'dinhhuy.nguyen@gmail.com',
                '$2a$10$qv8ssuwrnp/yhpwtpqdgp.mxj01hcw4ji6wkvp6.qkwwx1zxhqxyg', 'ROLE_SUPER_ADMIN')
        ON CONFLICT DO NOTHING;

        INSERT INTO authority(code, name, options)
        VALUES ('ACCOUNT_REGISTER', 'Account Register', '{"ENABLE": "ENABLE"}')
        ON CONFLICT DO NOTHING;
    END;
$$;