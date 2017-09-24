import { Component, OnInit } from '@angular/core';

// Services
import {HttpApiService} from './../services/http-api.service';

@Component({
  selector: 'app-welcome',
  templateUrl: './welcome.component.html',
  styleUrls: ['./welcome.component.scss']
})
export class WelcomeComponent implements OnInit {
  posts: any[];

  constructor(private api: HttpApiService) { }

  ngOnInit() {
    this.api.getAllPosts().subscribe( (posts) => {
      this.posts = posts.post;
    });
  }
}
