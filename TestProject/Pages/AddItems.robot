*** Variables ***

${LABEL}              //android.view.viewGroup[@content_desc="test-cart drop zone"]/android.view.ViewGroup
${ITEM1}              xpath=(//android.widget.TextView[@text="ADD TO CART"])[1]
${ITEM2}              //android.widget.TextView[@text="ADD TO CART"]
${ITEM3}              xpath=(//android.view.ViewGroup[@content-desc="test-ADD TO CART"])[3]
${ITEM4}              xpath=(//android.view.ViewGroup[@content-desc="test-ADD TO CART"])[1]
${CART}              //android.view.ViewGroup[@content-desc="test-Cart"]/android.view.ViewGroup/android.widget.ImageView
${CONTINUE_SHOPPING}    xpath=(//android.view.ViewGroup[@content-desc="test-CONTINUE SHOPPING"])
${CHECKOUT}          //android.view.ViewGroup[@content-desc="test-CHECKOUT"]
${FIRSTNAME}         //android.widget.EditText[@content-desc="test-First Name"]
${LASTNAME}         //android.widget.EditText[@content-desc="test-Last Name"]
${ZCODE}          //android.widget.EditText[@content-desc="test-Zip/Postal Code"]
${CONTINUE}         //android.view.ViewGroup[@content-desc="test-CONTINUE"]
${FINISH}           //android.widget.TextView[@text="FINISH"]
${TEXT_MSG}        //android.widget.TextView[@text="THANK YOU FOR YOU ORDER"]





