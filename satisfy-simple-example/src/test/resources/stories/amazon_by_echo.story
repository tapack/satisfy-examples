GivenStories: preconditions/open_amazon.story

Scenario: Find Echo on Amazon and put into cart
When fill 'twotabsearchtextbox' with 'echo'
And click 'input.nav-input'
And click '@echo_link'
And click 'add-to-cart-button'
And click 'intl_pop_continue'
And click 'hlb-view-cart-announce'
Then '//div[@class='sc-list-item-content']//span[.='$179.99']' contains '$179.99' text