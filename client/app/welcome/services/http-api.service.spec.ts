/* tslint:disable:no-unused-variable */

import { TestBed, async, inject } from '@angular/core/testing';
import { HttpApiService } from './http-api.service';

describe('HttpApiService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [HttpApiService]
    });
  });

  it('should ...', inject([HttpApiService], (service: HttpApiService) => {
    expect(service).toBeTruthy();
  }));
});
