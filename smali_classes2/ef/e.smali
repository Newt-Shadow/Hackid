.class public abstract Lef/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/nio/file/OpenOption;

.field private static final b:[Ljava/nio/file/OpenOption;

.field public static final c:[Ljava/nio/file/CopyOption;

.field public static final d:[Lef/a;

.field public static final e:[Ljava/nio/file/attribute/FileAttribute;

.field public static final f:[Ljava/nio/file/FileVisitOption;

.field public static final g:[Ljava/nio/file/LinkOption;

.field public static final h:[Ljava/nio/file/LinkOption;

.field static final i:Ljava/nio/file/LinkOption;

.field public static final j:[Ljava/nio/file/OpenOption;

.field public static final k:[Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/nio/file/OpenOption;

    .line 3
    .line 4
    invoke-static {}, Lef/b;->a()Ljava/nio/file/StandardOpenOption;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    invoke-static {}, Lef/c;->a()Ljava/nio/file/StandardOpenOption;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v4, 0x1

    .line 16
    aput-object v2, v1, v4

    .line 17
    .line 18
    sput-object v1, Lef/e;->a:[Ljava/nio/file/OpenOption;

    .line 19
    .line 20
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    .line 21
    .line 22
    invoke-static {}, Lef/b;->a()Ljava/nio/file/StandardOpenOption;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    aput-object v1, v0, v3

    .line 27
    .line 28
    invoke-static {}, Lef/d;->a()Ljava/nio/file/StandardOpenOption;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    aput-object v1, v0, v4

    .line 33
    .line 34
    sput-object v0, Lef/e;->b:[Ljava/nio/file/OpenOption;

    .line 35
    .line 36
    new-array v0, v3, [Ljava/nio/file/CopyOption;

    .line 37
    .line 38
    sput-object v0, Lef/e;->c:[Ljava/nio/file/CopyOption;

    .line 39
    .line 40
    new-array v0, v3, [Lef/a;

    .line 41
    .line 42
    sput-object v0, Lef/e;->d:[Lef/a;

    .line 43
    .line 44
    new-array v0, v3, [Ljava/nio/file/attribute/FileAttribute;

    .line 45
    .line 46
    sput-object v0, Lef/e;->e:[Ljava/nio/file/attribute/FileAttribute;

    .line 47
    .line 48
    new-array v0, v3, [Ljava/nio/file/FileVisitOption;

    .line 49
    .line 50
    sput-object v0, Lef/e;->f:[Ljava/nio/file/FileVisitOption;

    .line 51
    .line 52
    new-array v0, v3, [Ljava/nio/file/LinkOption;

    .line 53
    .line 54
    sput-object v0, Lef/e;->g:[Ljava/nio/file/LinkOption;

    .line 55
    .line 56
    invoke-static {}, Laf/d0;->a()Ljava/nio/file/LinkOption;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    filled-new-array {v0}, [Ljava/nio/file/LinkOption;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lef/e;->h:[Ljava/nio/file/LinkOption;

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    sput-object v0, Lef/e;->i:Ljava/nio/file/LinkOption;

    .line 68
    .line 69
    new-array v0, v3, [Ljava/nio/file/OpenOption;

    .line 70
    .line 71
    sput-object v0, Lef/e;->j:[Ljava/nio/file/OpenOption;

    .line 72
    .line 73
    new-array v0, v3, [Ljava/nio/file/Path;

    .line 74
    .line 75
    sput-object v0, Lef/e;->k:[Ljava/nio/file/Path;

    .line 76
    .line 77
    return-void
.end method
