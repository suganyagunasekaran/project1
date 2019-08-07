<%@include file="header.jsp"%>
<html>
<head>
<title>FashionHi5</title>
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">


<script type="text/javascript">
$(function () {
	  $('[data-toggle="popover"]').popover()
	})
</script>

</head>
<body>

<form action="<c:url value='/cart/invoice'/>">
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 col-lg-4 col-lg-offset-4">
            <div id="pay-invoice" class="card">
                <div class="card-block">
                    <div class="card-title">
                        <h2 class="text-xs-center">Payment</h2>
                    </div>
                    <hr>
                    
                       <img src="http://i76.imgup.net/accepted_c22e0.png">
                          <hr>        
                        <div class="inner-addon left-addon">
      <i class="glyphicon glyphicon-debitcard"></i> Name on Card    
      <input type="text" class="form-control" placeholder="Please enter valid name" />
    </div>
                        
                        
                        <div class="form-group">
                            <label for="cc-number" class="control-label">Card number</label>
                            <input id="cc-number" name="cc-number" type="tel" class="form-control cc-number identified visa" value="" data-val="true" data-val-required="Please enter card number" placeholder="Please enter valid cardnumber" autocomplete="cc-number">
                            <span class="form-group-addon left-addon" data-valmsg-for="cc-number" data-valmsg-replace="true">
                            <i class="fa fa-credit-card"></i></span>
                        </div>
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="cc-exp" class="control-label">Expiration</label>
                                    <input id="cc-exp" name="cc-exp" type="tel" class="form-control cc-exp" value="" data-val="true" data-val-required="Please enter the card expiration" data-val-cc-exp="Please enter a valid month and year" placeholder="MM / YY" autocomplete="cc-exp">
                                    <span class="help-block" data-valmsg-for="cc-exp" data-valmsg-replace="true"></span>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <label for="x_card_code" class="control-label">Security code</label>
                                <div class="input-group">
                                    <input id="x_card_code" name="x_card_code" type="password" class="form-control cc-cvc" value="" data-val="true" data-val-required="Please enter the security code" placeholder="cvv" autocomplete="off">
                                    <div class="input-group-addon">
                                        <span class="fa fa-question-circle" data-toggle="popover" data-container="body" data-html="true" data-title="Security Code" 
                                        data-content="<div class='text-center one-card'>The 3 digit code on back of the card..<div class='visa-mc-cvc-preview'></div></div>"
                                        data-trigger="hover"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="x_zip" class="control-label">Postal code</label>
                            <input id="x_zip" name="x_zip" type="text" class="form-control" value="" data-val="true" data-val-required="Please enter the ZIP/Postal code" autocomplete="postal-code">
                            <span class="help-block" data-valmsg-for="x_zip" data-valmsg-replace="true"></span>
                        </div>
                        <div>
                         <a href="<c:url value='/cart/invoice'/>" class="btn btn-default btn-success"><center>Pay Now</center><span style="padding-right:520px;" class="glyphicon glyphicon-money"></span></a></td>
                          </div>
                          </div>
                          </div>
                          </div>
                          </div>  
                        </div>
                    </form>
             
</body>
</html>