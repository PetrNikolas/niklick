// Imports
import { ModuleWithProviders } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

// Container
import { ContactComponent } from './pages/contact.component';

// Route Configuration
export const routes: Routes = [
  { path: 'contact', component: ContactComponent }
];

export const routing: ModuleWithProviders = RouterModule.forChild(routes);