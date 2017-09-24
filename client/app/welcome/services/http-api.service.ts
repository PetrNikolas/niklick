import { Injectable } from '@angular/core';
import { Http, Headers, RequestOptions } from '@angular/http';

// RxJS
import { Observable } from 'RxJS';
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/catch';
import 'rxjs/add/observable/throw';

// Url for REAST API
const apiUrlV1 = 'http://localhost:3000/api/v1/posts';

@Injectable()
export class HttpApiService {

  constructor(private http: Http) {}

  // Get all videos
  getAllPosts(): Observable<any> {
    const headers = new Headers({
      'Accept': 'application/json;version=1',
      'Access-Control-Allow-Origin': '*'
    });
    const options = new RequestOptions({ headers: headers });
    return this.http.get(apiUrlV1, options)
      .map(res => res.json())
      .catch((error: any) => Observable.throw(error.json));
  }
}
