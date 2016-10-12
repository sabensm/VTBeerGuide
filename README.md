# VTBeerGuide
A project to help learn the fundamentals of Swift and iOS

### Release 0.1

#### Accomplished
* Designed layout for portrait and landscape orientation using size classes
* Implemented asynchronous downloading of remote images
* Custom table view cells 
* Custom fonts
* Bypassed ATS because HTTPS links are not ensured.

#### Known Issues / Future Fixes
* Image loading is SLOW. Look at ways to improve this
* Images are not stored locally and must be re-downloaded when going to a beer detail page. Look at ways to store the images locally once downloaded to be able to pass between views.
* Some strange formatting issues occur when rotating the details page between portrait and landscape. 
* Sometimes the wrong image appears in a cell on rotate or scroll. Believe this is due to cell reuse and not setting some type of identifier. Look at fixing. 


### Roadmap
* Fetch and parse data from API instead of hardcoding
* Create app icon & launch screen
* Add links out to web for more information and open in webview
* Create image gallery to browse beers that way in addition to the table view (collection views!)
