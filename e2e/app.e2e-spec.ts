import { AngularappPage } from './app.po';

describe('angularapp App', function() {
  let page: AngularappPage;

  beforeEach(() => {
    page = new AngularappPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
