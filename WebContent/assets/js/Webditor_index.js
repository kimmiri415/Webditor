$(document).ready(function(){
		$("#email").attr("type", "hidden");
		$("#pw").attr("type", "hidden");
		$("#btnlogin").click(function(){
			if($("#email").attr("type") == "hidden")
				{
					
					$("#email").attr("type", "email");
					$("#pw").attr("type", "password");
					//$("ul",this).slideDown("slow");
					$("#btnjoin").hide();
					//$("input.editlogin").slideDown("slow");

					// 로그인 눌렀을 때 form의 action을 Login으로
					$("#tool").attr("action","Login");
				}
			else
				{
					$("#btnlogin").attr("type","submit");
					//$("input.editlogin").slideDown("slow");
				}
					//$("ul li").slideDown("slow");
					$("input.editlogin").slideDown("slow");
					$("#btnlogin").addClass("big");
			});
		$("#btnjoin").click(function(){
			if($("#pw").attr("type") == "hidden")
				{

					$("#email").attr("type", "email");
					$("#pw").attr("type", "password");
					$("#check").attr("type","password");
					$("#btnlogin").hide();

					// 회원가입 눌렀을 때 form의 action을 Join으로
					$("#tool").attr("action","Join");
				}
			else
				{
				if($("#email").val()==""||$("#pw").val()=="")
					{
						alert("이메일과 비밀번호를 입력해주세요.");
						return false;
					}
				if($("#pw").val()==$("#check").val())
					{
						$("#btnjoin").attr("type","submit");
						//alert("회원가입");
					}
				else
					{
						alert("올바른 비밀번호를 입력해주세요.");
						return false;
					}	
				}
				$("#check").addClass("editlogin");
				$("input.editlogin").slideDown("slow");
				$("#btnjoin").addClass("big");
			});
		});

	


