function CheckAddProduct(){
    var productId=document.getElementById("productId");
    var name = document.getElementById("name");
    var unitPrice = document.getElementById("unitPrice");
    var unitSInStock=document.getElementById("unitsInStock");
    

    //상품 아이디 체크
    if (!check(/^P[0-9]{4,11}$/,productId,"[상품코드]\nP와 숫자를 조합하여 5~12자까지 입력하세요\n첫 글자는 반드시P로 시작하세요")){
        return false;
    }
    

    //상품명 체크
    if(name.value.length<4||name.value.length>12){
        alert("[상품명]\n최소 4자에서 최대 12자까지 입력하세요");
        name.selecte();
        name.focus();
        return false;
    }

    //상품 가격 체크
    if(unitPrice.value.length==0||isNaN(unitPrice.value)){
        alert("[가격]\n숫자만 입력하세요");
        unitPrice.selecte();
        unitPrice.focus();
        return false;
    }
    if(unitPrice.value<0){
        alert("[가격]\n음수는 임력할 수 없습니다.");
        unitPrice.selecte();
        unitPrice.focus();
        return false;
    }else if(!check(/^\d+(?:[.]?[\d]?[\d])?$/, unitPrice, "[가격]\n소수점 둘째 자리까지만 입력하세요")){return false;}

    //재고 수 체크
    if(isNaN(unitSInStock.value)){
        alert("[재고 수]\n숫자만 입력하세요");
        unitSInStock.selecte();
        unitSInStock.focus();
        return false;
    }

    function check(regExp,e,msg){
        if(regExp.test(e.value)){
            return true;
        }
        alert(msg);
        e.selecte();
        e.focus;
        return false;
    }

    document.newProduct.submit();
}