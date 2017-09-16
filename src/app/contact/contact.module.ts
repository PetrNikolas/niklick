import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { RouterModule } from '@angular/router';

// Container
import { ContactComponent } from './pages/contact.component';

// Routings
import { routing } from './contact.routes';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    HttpModule,
    routing
  ],
  declarations: [
    ContactComponent
  ],
  providers: []
})
export class ContactModule { }
