GivenStories: preconditions/open_amazon.story

Scenario: Find Kindle Fire on Amazon and put into cart
When fill 'twotabsearchtextbox' with 'kindle fire'
And click 'input.nav-input'
And click '@kindle_fire_link'
And click 'bb_to_cfg_button'
And click 'configuratorAddToCartButton'
And click '.s_editCart'
Then '//div[@class='sc-list-item-content']//span[.='$139.00']' contains '$139.00' text