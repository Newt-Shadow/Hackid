.class public final Lu8/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu8/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu8/g$a;
    }
.end annotation


# static fields
.field public static final b:Lu8/g$a;


# instance fields
.field private final a:Lk8/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu8/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu8/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lu8/g;->b:Lu8/g$a;

    return-void
.end method

.method public constructor <init>(Lk8/b;)V
    .locals 1

    .line 1
    const-string v0, "transportFactoryProvider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lu8/g;->a:Lk8/b;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic b(Lu8/g;Lu8/i0;)[B
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lu8/g;->c(Lu8/i0;)[B

    move-result-object p0

    return-object p0
.end method

.method private final c(Lu8/i0;)[B
    .locals 3

    .line 1
    sget-object v0, Lu8/j0;->a:Lu8/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lu8/j0;->c()Ld8/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ld8/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "encode(...)"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "Session Event Type: "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lu8/i0;->b()Lu8/j;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v1, "FirebaseSessions"

    .line 42
    .line 43
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    sget-object p1, Lrd/d;->b:Ljava/nio/charset/Charset;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "getBytes(...)"

    .line 53
    .line 54
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object p1
.end method


# virtual methods
.method public a(Lu8/i0;)V
    .locals 5

    .line 1
    const-string v0, "sessionEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lu8/g;->a:Lk8/b;

    .line 7
    .line 8
    invoke-interface {v0}, Lk8/b;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ln2/j;

    .line 13
    .line 14
    const-string v1, "json"

    .line 15
    .line 16
    invoke-static {v1}, Ln2/c;->b(Ljava/lang/String;)Ln2/c;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lu8/f;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Lu8/f;-><init>(Lu8/g;)V

    .line 23
    .line 24
    .line 25
    const-string v3, "FIREBASE_APPQUALITY_SESSION"

    .line 26
    .line 27
    const-class v4, Lu8/i0;

    .line 28
    .line 29
    invoke-interface {v0, v3, v4, v1, v2}, Ln2/j;->a(Ljava/lang/String;Ljava/lang/Class;Ln2/c;Ln2/h;)Ln2/i;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p1}, Ln2/d;->f(Ljava/lang/Object;)Ln2/d;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {v0, p1}, Ln2/i;->b(Ln2/d;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
