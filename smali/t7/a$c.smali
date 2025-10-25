.class final Lt7/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field static final a:Lt7/a$c;

.field private static final b:Ld8/c;

.field private static final c:Ld8/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lt7/a$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lt7/a$c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lt7/a$c;->a:Lt7/a$c;

    .line 7
    .line 8
    const-string v0, "key"

    .line 9
    .line 10
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lt7/a$c;->b:Ld8/c;

    .line 15
    .line 16
    const-string v0, "value"

    .line 17
    .line 18
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lt7/a$c;->c:Ld8/c;

    .line 23
    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lt7/f0$c;

    .line 2
    .line 3
    check-cast p2, Ld8/e;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lt7/a$c;->b(Lt7/f0$c;Ld8/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Lt7/f0$c;Ld8/e;)V
    .locals 2

    .line 1
    sget-object v0, Lt7/a$c;->b:Ld8/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lt7/f0$c;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {p2, v0, v1}, Ld8/e;->c(Ld8/c;Ljava/lang/Object;)Ld8/e;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lt7/a$c;->c:Ld8/c;

    .line 11
    .line 12
    invoke-virtual {p1}, Lt7/f0$c;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p2, v0, p1}, Ld8/e;->c(Ld8/c;Ljava/lang/Object;)Ld8/e;

    .line 17
    .line 18
    .line 19
    return-void
.end method
