package com.sasatech.bookdodum.controller;


import com.sasatech.bookdodum.dto.request.book.BookRequestDto;
import com.sasatech.bookdodum.dto.request.book.ReviewRequestDto;
import com.sasatech.bookdodum.dto.resposne.api.ApiResponseDto;
import com.sasatech.bookdodum.dto.resposne.book.BookResponseDto;
import com.sasatech.bookdodum.service.book.BookService;
import com.sasatech.bookdodum.service.book.ReviewService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


@Tag(name = "Book", description = "도서 관련 API")
@RestController
@RequestMapping("/book")
@RequiredArgsConstructor
public class BookController {
    private final BookService bookService;
    private final ReviewService reviewService;


    @GetMapping("/list")
    @Operation(summary = "내 도서 목록조회")
    public ResponseEntity<?> listBook() {
        return new ResponseEntity(new ApiResponseDto(true, "listBook Success", bookService.listBook()), HttpStatus.OK);
    }

    @GetMapping("/")
    @Operation(summary = "내 도서 상세조회")
    public ResponseEntity<?> detailBook(@RequestParam("bookid") Long bookId) {
        return new ResponseEntity(new ApiResponseDto(true, "detailBook Success", bookService.detailBook(bookId)), HttpStatus.OK);
    }

    @GetMapping("/isbn")
    @Operation(summary = "ISBN 조회")
    public ResponseEntity<?> readIsbn(@RequestParam("path") String path) {
        return new ResponseEntity(new ApiResponseDto(true, "readIsbn Success", bookService.readIsbn(path)), HttpStatus.OK);
    }

    @PostMapping("/{bookid}")
    @Operation(summary = "읽는 도서 등록")
    public ResponseEntity<?> addBook(@PathVariable("bookid") Long id) {
        if (bookService.addBook(id)) {
            return new ResponseEntity(new ApiResponseDto(true, "addBook Success", null), HttpStatus.OK);
        } else {
            return new ResponseEntity(new ApiResponseDto(false, "addBook Fail (이미 등록한 책 입니다.)", null), HttpStatus.OK);
        }
    }


    @DeleteMapping("/{bookid}")
    @Operation(summary = "등록 도서 삭제")
    public ResponseEntity<?> deleteBook(@PathVariable("bookid") Long id) {
        bookService.deleteBook(id);
        return new ResponseEntity(new ApiResponseDto(true, "deleteBook Success", null), HttpStatus.OK);
    }

    @PutMapping("/{bookid}")
    @Operation(summary = "다 읽은 도서 갱신")
    public ResponseEntity<?> finishBook(@PathVariable("bookid") Long id) {
        bookService.finishBook(id);
        return new ResponseEntity(new ApiResponseDto(true, "finishBook Success", null), HttpStatus.OK);
    }


    // ====================================== feature/review ===========================================

    @PostMapping("/review")
    @Operation(summary = "독후감 등록")
    public ResponseEntity<?> createReview(@RequestBody ReviewRequestDto reviewRequestDto) {
        if (reviewService.createReview(reviewRequestDto)) {
            return new ResponseEntity(new ApiResponseDto(true, "createReview Success", null), HttpStatus.OK);
        } else {
            return new ResponseEntity(new ApiResponseDto(false, "createReview Fail", null), HttpStatus.OK);
        }
    }


    @GetMapping("/review")
    @Operation(summary = "독후감 목록 조회")
    private ResponseEntity<?> listReview() {
        return new ResponseEntity(new ApiResponseDto(true, "listReview Success", reviewService.listReview()), HttpStatus.OK);
    }


    @DeleteMapping("/review/{reviewid}")
    @Operation(summary = "독후감 삭제")
    public ResponseEntity<?> deleteReview(@PathVariable("reviewid") Long reviewId) {
        if (reviewService.deleteReview(reviewId)) {
            return new ResponseEntity(new ApiResponseDto(true, "deleteReview Success", null), HttpStatus.OK);
        } else {
            return new ResponseEntity(new ApiResponseDto(false, "deleteReview Fail", null), HttpStatus.OK);
        }
    }

}




//    @GetMapping("/test")
//    public ResponseEntity<?> test() {
//        bookService.convertCategory();
//        return null;
//    }