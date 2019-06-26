; ModuleID = 'smallcode.c'
source_filename = "smallcode.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [26 x i8] c"Enter a positive number: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@str = private unnamed_addr constant [25 x i8] c"less than or equal to 10\00"
@str.4 = private unnamed_addr constant [45 x i8] c"return 0 is control dependent on if (x > 10)\00"

; Function Attrs: nounwind optsize ssp uwtable
define i32 @main() local_unnamed_addr #0 !dbg !9 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4, !dbg !15
  %3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #5, !dbg !16
  call void @llvm.dbg.value(metadata i32* %1, metadata !14, metadata !DIExpression(DW_OP_deref)), !dbg !17
  %4 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* nonnull %1) #5, !dbg !18
  %5 = load i32, i32* %1, align 4, !dbg !19, !tbaa !21
  call void @llvm.dbg.value(metadata i32 %5, metadata !14, metadata !DIExpression()), !dbg !17
  %6 = icmp sgt i32 %5, 10, !dbg !25
  br i1 %6, label %7, label %9, !dbg !26

; <label>:7:                                      ; preds = %0
  %8 = call i32 @puts(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @str.4, i64 0, i64 0)), !dbg !27
  br label %11, !dbg !29

; <label>:9:                                      ; preds = %0
  %10 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @str, i64 0, i64 0)), !dbg !30
  br label %11, !dbg !32

; <label>:11:                                     ; preds = %9, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4, !dbg !32
  ret i32 0, !dbg !32
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @scanf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

attributes #0 = { nounwind optsize ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.dbg.cu = !{!5}
!llvm.ident = !{!8}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !7)
!6 = !DIFile(filename: "smallcode.c", directory: "/Users/Adelson/Desktop/Docker/slicing")
!7 = !{}
!8 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!9 = distinct !DISubprogram(name: "main", scope: !6, file: !6, line: 2, type: !10, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !5, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14}
!14 = !DILocalVariable(name: "x", scope: !9, file: !6, line: 4, type: !12)
!15 = !DILocation(line: 4, column: 5, scope: !9)
!16 = !DILocation(line: 5, column: 5, scope: !9)
!17 = !DILocation(line: 4, column: 9, scope: !9)
!18 = !DILocation(line: 6, column: 5, scope: !9)
!19 = !DILocation(line: 8, column: 9, scope: !20)
!20 = distinct !DILexicalBlock(scope: !9, file: !6, line: 8, column: 9)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 8, column: 11, scope: !20)
!26 = !DILocation(line: 8, column: 9, scope: !9)
!27 = !DILocation(line: 10, column: 9, scope: !28)
!28 = distinct !DILexicalBlock(scope: !20, file: !6, line: 9, column: 5)
!29 = !DILocation(line: 11, column: 9, scope: !28)
!30 = !DILocation(line: 15, column: 9, scope: !31)
!31 = distinct !DILexicalBlock(scope: !20, file: !6, line: 14, column: 5)
!32 = !DILocation(line: 17, column: 1, scope: !9)
