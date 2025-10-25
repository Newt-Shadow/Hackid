.class public final enum Lqb/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqb/d$a;
    }
.end annotation


# static fields
.field public static final b:Lqb/d$a;

.field public static final enum c:Lqb/d;

.field public static final enum d:Lqb/d;

.field public static final enum e:Lqb/d;

.field private static final synthetic f:[Lqb/d;

.field private static final synthetic g:Lcd/a;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lqb/d;

    .line 2
    .line 3
    const-string v1, "NOTHING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lqb/d;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lqb/d;->c:Lqb/d;

    .line 11
    .line 12
    new-instance v0, Lqb/d;

    .line 13
    .line 14
    const-string v1, "ONCE"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lqb/d;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lqb/d;->d:Lqb/d;

    .line 21
    .line 22
    new-instance v0, Lqb/d;

    .line 23
    .line 24
    const-string v1, "REPEAT"

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lqb/d;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lqb/d;->e:Lqb/d;

    .line 31
    .line 32
    invoke-static {}, Lqb/d;->a()[Lqb/d;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lqb/d;->f:[Lqb/d;

    .line 37
    .line 38
    invoke-static {v0}, Lcd/b;->a([Ljava/lang/Enum;)Lcd/a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lqb/d;->g:Lcd/a;

    .line 43
    .line 44
    new-instance v0, Lqb/d$a;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-direct {v0, v1}, Lqb/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lqb/d;->b:Lqb/d$a;

    .line 51
    .line 52
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lqb/d;->a:I

    .line 5
    .line 6
    return-void
.end method

.method private static final synthetic a()[Lqb/d;
    .locals 3

    .line 1
    sget-object v0, Lqb/d;->c:Lqb/d;

    sget-object v1, Lqb/d;->d:Lqb/d;

    sget-object v2, Lqb/d;->e:Lqb/d;

    filled-new-array {v0, v1, v2}, [Lqb/d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lqb/d;
    .locals 1

    .line 1
    const-class v0, Lqb/d;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lqb/d;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lqb/d;
    .locals 1

    .line 1
    sget-object v0, Lqb/d;->f:[Lqb/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lqb/d;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lqb/d;->a:I

    .line 2
    .line 3
    return v0
.end method
