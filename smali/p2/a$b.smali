.class final Lp2/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field static final a:Lp2/a$b;

.field private static final b:Ld8/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lp2/a$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lp2/a$b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lp2/a$b;->a:Lp2/a$b;

    .line 7
    .line 8
    const-string v0, "storageMetrics"

    .line 9
    .line 10
    invoke-static {v0}, Ld8/c;->a(Ljava/lang/String;)Ld8/c$b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {}, Lg8/a;->b()Lg8/a;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, v2}, Lg8/a;->c(I)Lg8/a;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lg8/a;->a()Lg8/d;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ld8/c$b;->b(Ljava/lang/annotation/Annotation;)Ld8/c$b;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ld8/c$b;->a()Ld8/c;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lp2/a$b;->b:Ld8/c;

    .line 36
    .line 37
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
    check-cast p1, Ls2/b;

    .line 2
    .line 3
    check-cast p2, Ld8/e;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lp2/a$b;->b(Ls2/b;Ld8/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Ls2/b;Ld8/e;)V
    .locals 1

    .line 1
    sget-object v0, Lp2/a$b;->b:Ld8/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Ls2/b;->a()Ls2/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p2, v0, p1}, Ld8/e;->c(Ld8/c;Ljava/lang/Object;)Ld8/e;

    .line 8
    .line 9
    .line 10
    return-void
.end method
