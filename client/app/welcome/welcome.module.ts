import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';

// Container
import { WelcomeComponent } from './pages/welcome.component';

// Service
import { HttpApiService } from './services/http-api.service';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    HttpModule
  ],
  declarations: [
    WelcomeComponent
  ],
  providers: [
    HttpApiService
  ]
})
export class WelcomeModule { }
