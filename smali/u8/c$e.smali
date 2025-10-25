.class final Lu8/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu8/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# static fields
.field static final a:Lu8/c$e;

.field private static final b:Ld8/c;

.field private static final c:Ld8/c;

.field private static final d:Ld8/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu8/c$e;

    .line 2
    .line 3
    invoke-direct {v0}, Lu8/c$e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lu8/c$e;->a:Lu8/c$e;

    .line 7
    .line 8
    const-string v0, "eventType"

    .line 9
    .line 10
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lu8/c$e;->b:Ld8/c;

    .line 15
    .line 16
    const-string v0, "sessionData"

    .line 17
    .line 18
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lu8/c$e;->c:Ld8/c;

    .line 23
    .line 24
    const-string v0, "applicationInfo"

    .line 25
    .line 26
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lu8/c$e;->d:Ld8/c;

    .line 31
    .line 32
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
    check-cast p1, Lu8/i0;

    .line 2
    .line 3
    check-cast p2, Ld8/e;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lu8/c$e;->b(Lu8/i0;Ld8/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Lu8/i0;Ld8/e;)V
    .locals 2

    .line 1
    sget-object v0, Lu8/c$e;->b:Ld8/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lu8/i0;->b()Lu8/j;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {p2, v0, v1}, Ld8/e;->c(Ld8/c;Ljava/lang/Object;)Ld8/e;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lu8/c$e;->c:Ld8/c;

    .line 11
    .line 12
    invoke-virtual {p1}, Lu8/i0;->c()Lu8/p0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p2, v0, v1}, Ld8/e;->c(Ld8/c;Ljava/lang/Object;)Ld8/e;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lu8/c$e;->d:Ld8/c;

    .line 20
    .line 21
    invoke-virtual {p1}, Lu8/i0;->a()Lu8/b;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p2, v0, p1}, Ld8/e;->c(Ld8/c;Ljava/lang/Object;)Ld8/e;

    .line 26
    .line 27
    .line 28
    return-void
.end method
