import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

// Modules
import { WelcomeModule } from './welcome/welcome.module';
import { ContactModule } from './contact/contact.module';

// Routings
import { routing } from './app.routes';

// Components
import { AppComponent } from './app.component';
import { HeaderComponent } from './shared-components/header/header.component';
import { FooterComponent } from './shared-components/footer/footer.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent
  ],
  imports: [
    BrowserModule,
    WelcomeModule,
    ContactModule,
    routing
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
