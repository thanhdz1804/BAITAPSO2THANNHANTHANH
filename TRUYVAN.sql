SELECT 
    sv.maSV,
    sv.hoTen,
    lhp.tenLopHP,
    mh.tenMon,
    lhp.HK,
    SUM(d.Diem) * (1 - CAST(dkmh.PhanTramThi AS FLOAT) / 100) AS DiemThanhPhan
FROM 
    SinhVien sv
JOIN 
    DKMH dkmh ON sv.maSV = dkmh.maSV
JOIN 
    LopHP lhp ON dkmh.maLopHP = lhp.maLopHP
JOIN 
    MonHoc mh ON lhp.maMon = mh.maMon
JOIN 
    Diem d ON dkmh.id_dk = d.id_dk
GROUP BY 
    sv.maSV, 
    sv.hoTen, 
    lhp.tenLopHP, 
    mh.tenMon, 
    dkmh.PhanTramThi, 
    lhp.HK;