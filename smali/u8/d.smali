.class public final enum Lu8/d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lf8/f;


# static fields
.field public static final enum b:Lu8/d;

.field public static final enum c:Lu8/d;

.field public static final enum d:Lu8/d;

.field public static final enum e:Lu8/d;

.field public static final enum f:Lu8/d;

.field public static final enum g:Lu8/d;

.field private static final synthetic h:[Lu8/d;

.field private static final synthetic i:Lcd/a;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lu8/d;

    .line 2
    .line 3
    const-string v1, "COLLECTION_UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lu8/d;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lu8/d;->b:Lu8/d;

    .line 10
    .line 11
    new-instance v0, Lu8/d;

    .line 12
    .line 13
    const-string v1, "COLLECTION_SDK_NOT_INSTALLED"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lu8/d;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lu8/d;->c:Lu8/d;

    .line 20
    .line 21
    new-instance v0, Lu8/d;

    .line 22
    .line 23
    const-string v1, "COLLECTION_ENABLED"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lu8/d;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lu8/d;->d:Lu8/d;

    .line 30
    .line 31
    new-instance v0, Lu8/d;

    .line 32
    .line 33
    const-string v1, "COLLECTION_DISABLED"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lu8/d;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lu8/d;->e:Lu8/d;

    .line 40
    .line 41
    new-instance v0, Lu8/d;

    .line 42
    .line 43
    const-string v1, "COLLECTION_DISABLED_REMOTE"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lu8/d;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lu8/d;->f:Lu8/d;

    .line 50
    .line 51
    new-instance v0, Lu8/d;

    .line 52
    .line 53
    const-string v1, "COLLECTION_SAMPLED"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lu8/d;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lu8/d;->g:Lu8/d;

    .line 60
    .line 61
    invoke-static {}, Lu8/d;->a()[Lu8/d;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lu8/d;->h:[Lu8/d;

    .line 66
    .line 67
    invoke-static {v0}, Lcd/b;->a([Ljava/lang/Enum;)Lcd/a;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lu8/d;->i:Lcd/a;

    .line 72
    .line 73
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lu8/d;->a:I

    .line 5
    .line 6
    return-void
.end method

.method private static final synthetic a()[Lu8/d;
    .locals 6

    .line 1
    sget-object v0, Lu8/d;->b:Lu8/d;

    sget-object v1, Lu8/d;->c:Lu8/d;

    sget-object v2, Lu8/d;->d:Lu8/d;

    sget-object v3, Lu8/d;->e:Lu8/d;

    sget-object v4, Lu8/d;->f:Lu8/d;

    sget-object v5, Lu8/d;->g:Lu8/d;

    filled-new-array/range {v0 .. v5}, [Lu8/d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lu8/d;
    .locals 1

    .line 1
    const-class v0, Lu8/d;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lu8/d;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lu8/d;
    .locals 1

    .line 1
    sget-object v0, Lu8/d;->h:[Lu8/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lu8/d;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lu8/d;->a:I

    .line 2
    .line 3
    return v0
.end method
