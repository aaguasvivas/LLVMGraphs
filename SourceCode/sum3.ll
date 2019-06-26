; ModuleID = 'sum3.c'
source_filename = "sum3.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [26 x i8] c"Enter a positive number: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"sum = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"i = %d\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @main() local_unnamed_addr #0 !dbg !9 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !17
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4, !dbg !17
  %3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #5, !dbg !18
  call void @llvm.dbg.value(metadata i32* %1, metadata !14, metadata !DIExpression(DW_OP_deref)), !dbg !19
  %4 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* nonnull %1) #5, !dbg !20
  call void @llvm.dbg.value(metadata i32 0, metadata !16, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 1, metadata !15, metadata !DIExpression()), !dbg !22
  %5 = load i32, i32* %1, align 4, !dbg !23, !tbaa !24
  call void @llvm.dbg.value(metadata i32 %5, metadata !14, metadata !DIExpression()), !dbg !19
  %6 = icmp slt i32 %5, 1, !dbg !28
  br i1 %6, label %19, label %7, !dbg !29

; <label>:7:                                      ; preds = %0
  %8 = shl i32 %5, 1, !dbg !29
  %9 = add i32 %5, -1, !dbg !29
  %10 = zext i32 %9 to i33, !dbg !29
  %11 = add i32 %5, -2, !dbg !29
  %12 = zext i32 %11 to i33, !dbg !29
  %13 = mul i33 %10, %12, !dbg !29
  %14 = lshr i33 %13, 1, !dbg !29
  %15 = trunc i33 %14 to i32, !dbg !29
  %16 = add i32 %8, %15, !dbg !29
  %17 = add i32 %16, -1, !dbg !29
  %18 = add i32 %5, 1, !dbg !29
  br label %19, !dbg !30

; <label>:19:                                     ; preds = %7, %0
  %20 = phi i32 [ 1, %0 ], [ %18, %7 ], !dbg !31
  %21 = phi i32 [ 0, %0 ], [ %17, %7 ], !dbg !31
  call void @llvm.dbg.value(metadata i32 %20, metadata !15, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i32 undef, metadata !16, metadata !DIExpression()), !dbg !21
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %21) #5, !dbg !30
  call void @llvm.dbg.value(metadata i32 undef, metadata !15, metadata !DIExpression()), !dbg !22
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %20) #5, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4, !dbg !34
  ret i32 0, !dbg !35
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @scanf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind optsize ssp uwtable
define void @A(i32* nocapture, i32* nocapture) local_unnamed_addr #0 !dbg !36 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !41, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i32* %1, metadata !42, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i32* %0, metadata !45, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.value(metadata i32* %1, metadata !48, metadata !DIExpression()), !dbg !51
  %3 = load i32, i32* %0, align 4, !dbg !52, !tbaa !24
  %4 = load i32, i32* %1, align 4, !dbg !53, !tbaa !24
  %5 = add nsw i32 %4, %3, !dbg !54
  store i32 %5, i32* %0, align 4, !dbg !55, !tbaa !24
  call void @llvm.dbg.value(metadata i32* %1, metadata !56, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32 1, metadata !61, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata i32* %1, metadata !45, metadata !DIExpression()), !dbg !65
  %6 = load i32, i32* %1, align 4, !dbg !67, !tbaa !24
  %7 = add nsw i32 %6, 1, !dbg !68
  store i32 %7, i32* %1, align 4, !dbg !69, !tbaa !24
  ret void, !dbg !70
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @add(i32* nocapture, i32* nocapture readonly) local_unnamed_addr #0 !dbg !46 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !45, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32* %1, metadata !48, metadata !DIExpression()), !dbg !72
  %3 = load i32, i32* %0, align 4, !dbg !73, !tbaa !24
  %4 = load i32, i32* %1, align 4, !dbg !74, !tbaa !24
  %5 = add nsw i32 %4, %3, !dbg !75
  store i32 %5, i32* %0, align 4, !dbg !76, !tbaa !24
  ret void, !dbg !77
}

; Function Attrs: nounwind optsize ssp uwtable
define void @inc(i32* nocapture) local_unnamed_addr #0 !dbg !57 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !56, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.value(metadata i32 1, metadata !61, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i32* %0, metadata !45, metadata !DIExpression()), !dbg !80
  %2 = load i32, i32* %0, align 4, !dbg !82, !tbaa !24
  %3 = add nsw i32 %2, 1, !dbg !83
  store i32 %3, i32* %0, align 4, !dbg !84, !tbaa !24
  ret void, !dbg !85
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

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
!6 = !DIFile(filename: "sum3.c", directory: "/Users/Adelson/Desktop/Docker/slicing")
!7 = !{}
!8 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!9 = distinct !DISubprogram(name: "main", scope: !6, file: !6, line: 3, type: !10, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !5, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !15, !16}
!14 = !DILocalVariable(name: "n", scope: !9, file: !6, line: 5, type: !12)
!15 = !DILocalVariable(name: "i", scope: !9, file: !6, line: 5, type: !12)
!16 = !DILocalVariable(name: "sum", scope: !9, file: !6, line: 5, type: !12)
!17 = !DILocation(line: 5, column: 5, scope: !9)
!18 = !DILocation(line: 8, column: 5, scope: !9)
!19 = !DILocation(line: 5, column: 9, scope: !9)
!20 = !DILocation(line: 9, column: 5, scope: !9)
!21 = !DILocation(line: 5, column: 15, scope: !9)
!22 = !DILocation(line: 5, column: 12, scope: !9)
!23 = !DILocation(line: 13, column: 17, scope: !9)
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 13, column: 14, scope: !9)
!29 = !DILocation(line: 13, column: 5, scope: !9)
!30 = !DILocation(line: 18, column: 5, scope: !9)
!31 = !DILocation(line: 0, scope: !32)
!32 = distinct !DILexicalBlock(scope: !9, file: !6, line: 14, column: 5)
!33 = !DILocation(line: 19, column: 5, scope: !9)
!34 = !DILocation(line: 21, column: 1, scope: !9)
!35 = !DILocation(line: 20, column: 5, scope: !9)
!36 = distinct !DISubprogram(name: "A", scope: !6, file: !6, line: 23, type: !37, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, isOptimized: true, unit: !5, retainedNodes: !40)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !39, !39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!40 = !{!41, !42}
!41 = !DILocalVariable(name: "x", arg: 1, scope: !36, file: !6, line: 23, type: !39)
!42 = !DILocalVariable(name: "y", arg: 2, scope: !36, file: !6, line: 23, type: !39)
!43 = !DILocation(line: 23, column: 13, scope: !36)
!44 = !DILocation(line: 23, column: 21, scope: !36)
!45 = !DILocalVariable(name: "a", arg: 1, scope: !46, file: !6, line: 31, type: !39)
!46 = distinct !DISubprogram(name: "add", scope: !6, file: !6, line: 31, type: !37, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, isOptimized: true, unit: !5, retainedNodes: !47)
!47 = !{!45, !48}
!48 = !DILocalVariable(name: "b", arg: 2, scope: !46, file: !6, line: 31, type: !39)
!49 = !DILocation(line: 31, column: 15, scope: !46, inlinedAt: !50)
!50 = distinct !DILocation(line: 27, column: 5, scope: !36)
!51 = !DILocation(line: 31, column: 23, scope: !46, inlinedAt: !50)
!52 = !DILocation(line: 33, column: 10, scope: !46, inlinedAt: !50)
!53 = !DILocation(line: 33, column: 15, scope: !46, inlinedAt: !50)
!54 = !DILocation(line: 33, column: 13, scope: !46, inlinedAt: !50)
!55 = !DILocation(line: 33, column: 8, scope: !46, inlinedAt: !50)
!56 = !DILocalVariable(name: "z", arg: 1, scope: !57, file: !6, line: 37, type: !39)
!57 = distinct !DISubprogram(name: "inc", scope: !6, file: !6, line: 37, type: !58, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, isOptimized: true, unit: !5, retainedNodes: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !39}
!60 = !{!56, !61}
!61 = !DILocalVariable(name: "tmp", scope: !57, file: !6, line: 40, type: !12)
!62 = !DILocation(line: 37, column: 15, scope: !57, inlinedAt: !63)
!63 = distinct !DILocation(line: 28, column: 5, scope: !36)
!64 = !DILocation(line: 40, column: 9, scope: !57, inlinedAt: !63)
!65 = !DILocation(line: 31, column: 15, scope: !46, inlinedAt: !66)
!66 = distinct !DILocation(line: 41, column: 5, scope: !57, inlinedAt: !63)
!67 = !DILocation(line: 33, column: 10, scope: !46, inlinedAt: !66)
!68 = !DILocation(line: 33, column: 13, scope: !46, inlinedAt: !66)
!69 = !DILocation(line: 33, column: 8, scope: !46, inlinedAt: !66)
!70 = !DILocation(line: 29, column: 1, scope: !36)
!71 = !DILocation(line: 31, column: 15, scope: !46)
!72 = !DILocation(line: 31, column: 23, scope: !46)
!73 = !DILocation(line: 33, column: 10, scope: !46)
!74 = !DILocation(line: 33, column: 15, scope: !46)
!75 = !DILocation(line: 33, column: 13, scope: !46)
!76 = !DILocation(line: 33, column: 8, scope: !46)
!77 = !DILocation(line: 35, column: 1, scope: !46)
!78 = !DILocation(line: 37, column: 15, scope: !57)
!79 = !DILocation(line: 40, column: 9, scope: !57)
!80 = !DILocation(line: 31, column: 15, scope: !46, inlinedAt: !81)
!81 = distinct !DILocation(line: 41, column: 5, scope: !57)
!82 = !DILocation(line: 33, column: 10, scope: !46, inlinedAt: !81)
!83 = !DILocation(line: 33, column: 13, scope: !46, inlinedAt: !81)
!84 = !DILocation(line: 33, column: 8, scope: !46, inlinedAt: !81)
!85 = !DILocation(line: 42, column: 1, scope: !57)
