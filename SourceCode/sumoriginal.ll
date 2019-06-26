; ModuleID = 'sumoriginal.c'
source_filename = "sumoriginal.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"\0ASum: %i , i: %i \00", align 1
@str = private unnamed_addr constant [22 x i8] c"Enter a value for n: \00"

; Function Attrs: nounwind optsize ssp uwtable
define i32 @main() local_unnamed_addr #0 !dbg !9 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !19
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4, !dbg !19
  %3 = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @str, i64 0, i64 0)), !dbg !20
  call void @llvm.dbg.value(metadata i32* %1, metadata !14, metadata !DIExpression(DW_OP_deref)), !dbg !21
  %4 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* nonnull %1) #5, !dbg !22
  call void @llvm.dbg.value(metadata i32 1, metadata !15, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 0, metadata !16, metadata !DIExpression()), !dbg !24
  %5 = load i32, i32* %1, align 4, !dbg !25, !tbaa !26
  call void @llvm.dbg.value(metadata i32 %5, metadata !14, metadata !DIExpression()), !dbg !21
  %6 = icmp slt i32 %5, 1, !dbg !30
  br i1 %6, label %24, label %7, !dbg !31

; <label>:7:                                      ; preds = %0, %7
  %8 = phi i32 [ %23, %7 ], [ -1, %0 ]
  %9 = phi i33 [ %22, %7 ], [ 0, %0 ]
  %10 = phi i32 [ %21, %7 ], [ 1, %0 ]
  %11 = phi i32 [ %18, %7 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !15, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 1, metadata !17, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.value(metadata i32 0, metadata !16, metadata !DIExpression()), !dbg !24
  %12 = zext i32 %8 to i33, !dbg !33
  %13 = mul i33 %9, %12, !dbg !33
  %14 = lshr i33 %13, 1, !dbg !33
  %15 = trunc i33 %14 to i32, !dbg !33
  %16 = add i32 %10, %15, !dbg !33
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %16, i32 %11) #5, !dbg !34
  %18 = add nuw nsw i32 %11, 1, !dbg !35
  call void @llvm.dbg.value(metadata i32 %18, metadata !15, metadata !DIExpression()), !dbg !23
  %19 = load i32, i32* %1, align 4, !dbg !25, !tbaa !26
  call void @llvm.dbg.value(metadata i32 %19, metadata !14, metadata !DIExpression()), !dbg !21
  %20 = icmp slt i32 %11, %19, !dbg !30
  %21 = add nuw i32 %10, 2, !dbg !31
  %22 = add nuw nsw i33 %9, 1, !dbg !31
  %23 = add nsw i32 %8, 1, !dbg !31
  br i1 %20, label %7, label %24, !dbg !31, !llvm.loop !36

; <label>:24:                                     ; preds = %7, %0
  %25 = phi i32 [ 1, %0 ], [ %18, %7 ], !dbg !38
  %26 = phi i32 [ 0, %0 ], [ %16, %7 ], !dbg !38
  call void @llvm.dbg.value(metadata i32 %25, metadata !15, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %26, metadata !16, metadata !DIExpression()), !dbg !24
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %26, i32 %25) #5, !dbg !39
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4, !dbg !40
  ret i32 0, !dbg !40
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
!6 = !DIFile(filename: "sumoriginal.c", directory: "/Users/Adelson/Desktop/Docker/slicing")
!7 = !{}
!8 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!9 = distinct !DISubprogram(name: "main", scope: !6, file: !6, line: 2, type: !10, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !5, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !15, !16, !17}
!14 = !DILocalVariable(name: "n", scope: !9, file: !6, line: 4, type: !12)
!15 = !DILocalVariable(name: "i", scope: !9, file: !6, line: 4, type: !12)
!16 = !DILocalVariable(name: "sum", scope: !9, file: !6, line: 4, type: !12)
!17 = !DILocalVariable(name: "j", scope: !18, file: !6, line: 15, type: !12)
!18 = distinct !DILexicalBlock(scope: !9, file: !6, line: 13, column: 5)
!19 = !DILocation(line: 4, column: 5, scope: !9)
!20 = !DILocation(line: 5, column: 5, scope: !9)
!21 = !DILocation(line: 4, column: 9, scope: !9)
!22 = !DILocation(line: 6, column: 5, scope: !9)
!23 = !DILocation(line: 4, column: 12, scope: !9)
!24 = !DILocation(line: 4, column: 15, scope: !9)
!25 = !DILocation(line: 12, column: 17, scope: !9)
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 12, column: 14, scope: !9)
!31 = !DILocation(line: 12, column: 5, scope: !9)
!32 = !DILocation(line: 15, column: 13, scope: !18)
!33 = !DILocation(line: 16, column: 9, scope: !18)
!34 = !DILocation(line: 21, column: 9, scope: !18)
!35 = !DILocation(line: 22, column: 15, scope: !18)
!36 = distinct !{!36, !31, !37}
!37 = !DILocation(line: 23, column: 5, scope: !9)
!38 = !DILocation(line: 0, scope: !18)
!39 = !DILocation(line: 24, column: 5, scope: !9)
!40 = !DILocation(line: 25, column: 1, scope: !9)
