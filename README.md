# Cup of Sugar (HackHolyoke2022)

### Inspiration 
Angel and I spotted a  “Rent-a-Rider” flyer posted by the riding team and realized that there are a lot of student organizations who fundraise around campus. It led us to think about all the ways students try to earn or raise money starting from people trying to sell items on the marketplace or in Blanch, offering rides, or pet sitting. It also reminded us of the MHC Mutual Aid Instagram account which shares MHC students; gofundme links. We also see people often impulsive spending money on goods that would eventually end up in their storage after one use. We don’t realize how many unnecessary products we buy until we’re surviving on ramen or moving things we hardly use to storage over the summer. Our goals were to help users tap into their network and reach their financial goals, facilitate mutual aid, reduce unnecessary spending, and promote sustainability.After brainstorming ways to do all these more efficiently, we came up with our app “Cup of Sugar” that can tackle several of these challenges at once. Our app lets community members share their metaphorical “cup of sugar” with each other and help each other out.


### What it does
“Cup of Sugar” is a one-stop platform that offers community members a variety of ways to fundraise: loan items they don’t use often, sell items (i.e. - handmade jewelry or buttons), offer services like rides or tutoring, or simply lend items for free in the spirit of mutual aid.  Lenders/sellers can list whatever they are offering, goods or services in our main feed using the plus buttons - which asks for more information (picture, category and pricing) and puts that entry into our database. Borrowers/buyers can search for specific items as well as filter by category to find what they are looking for. Then, Borrowers/buyers can add everything that they need to their cart, add payment information, and checkout. At checkout, they are prompted to select a mutual aid of their choice that they want to contribute to. 25% of the transaction goes directly to the mutual aid, while the 75% goes to the buyer/lender’s account. 

## Folder Structure of the project and implementation of BloC design pattern

2 different BLoCs were used to handle the navigation and business logic within the app. LoginBloc handles the FireBase Authentication backend and navigation between the homepage, login, and registration pages, while ProductsBloc deals with the marketplace. Event handling in terms of adding or removing items from the cart, calculating the final checkout amount, and filtering is done here. Every major page group has its own view, widgets, and may have its own state management. we follow the BLoC state management pattern, which has the core philosophy of dealing with business logic in terms of states and actions. The home screen is a state, a login screen is a state; pressing the login button is an action. Each action triggers an event handler which either updates a value (in the case of a number of marketplace events), or changes a state (LoginSuccess for example)

### 🔧 Built using (Technologies & Tools)
[![My Skills](https://skills.thijs.gg/icons?i=flutter,dart,html,firebase,figma&theme=light)](https://skills.thijs.gg)


### App Walkthrough video

[Youtube demo link](https://youtu.be/RcsiAQtw_b0)
  
