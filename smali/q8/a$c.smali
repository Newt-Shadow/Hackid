.class public final enum Lq8/a$c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lg8/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation


# static fields
.field public static final enum b:Lq8/a$c;

.field public static final enum c:Lq8/a$c;

.field public static final enum d:Lq8/a$c;

.field public static final enum e:Lq8/a$c;

.field private static final synthetic f:[Lq8/a$c;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lq8/a$c;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lq8/a$c;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lq8/a$c;->b:Lq8/a$c;

    .line 10
    .line 11
    new-instance v0, Lq8/a$c;

    .line 12
    .line 13
    const-string v1, "DATA_MESSAGE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lq8/a$c;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lq8/a$c;->c:Lq8/a$c;

    .line 20
    .line 21
    new-instance v0, Lq8/a$c;

    .line 22
    .line 23
    const-string v1, "TOPIC"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lq8/a$c;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lq8/a$c;->d:Lq8/a$c;

    .line 30
    .line 31
    new-instance v0, Lq8/a$c;

    .line 32
    .line 33
    const-string v1, "DISPLAY_NOTIFICATION"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lq8/a$c;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lq8/a$c;->e:Lq8/a$c;

    .line 40
    .line 41
    invoke-static {}, Lq8/a$c;->a()[Lq8/a$c;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lq8/a$c;->f:[Lq8/a$c;

    .line 46
    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lq8/a$c;->a:I

    .line 5
    .line 6
    return-void
.end method

.method private static synthetic a()[Lq8/a$c;
    .locals 4

    .line 1
    sget-object v0, Lq8/a$c;->b:Lq8/a$c;

    .line 2
    .line 3
    sget-object v1, Lq8/a$c;->c:Lq8/a$c;

    .line 4
    .line 5
    sget-object v2, Lq8/a$c;->d:Lq8/a$c;

    .line 6
    .line 7
    sget-object v3, Lq8/a$c;->e:Lq8/a$c;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lq8/a$c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lq8/a$c;
    .locals 1

    .line 1
    const-class v0, Lq8/a$c;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq8/a$c;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lq8/a$c;
    .locals 1

    .line 1
    sget-object v0, Lq8/a$c;->f:[Lq8/a$c;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lq8/a$c;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lq8/a$c;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lq8/a$c;->a:I

    .line 2
    .line 3
    return v0
.end method
