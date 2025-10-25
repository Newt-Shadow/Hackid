.class final Lio/sentry/r6$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/r6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/sentry/s5;

.field private volatile b:Lio/sentry/w0;

.field private volatile c:Lio/sentry/u0;


# direct methods
.method constructor <init>(Lio/sentry/r6$a;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-object v0, p1, Lio/sentry/r6$a;->a:Lio/sentry/s5;

    iput-object v0, p0, Lio/sentry/r6$a;->a:Lio/sentry/s5;

    .line 7
    iget-object v0, p1, Lio/sentry/r6$a;->b:Lio/sentry/w0;

    iput-object v0, p0, Lio/sentry/r6$a;->b:Lio/sentry/w0;

    .line 8
    iget-object p1, p1, Lio/sentry/r6$a;->c:Lio/sentry/u0;

    invoke-interface {p1}, Lio/sentry/u0;->r()Lio/sentry/u0;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/r6$a;->c:Lio/sentry/u0;

    return-void
.end method

.method constructor <init>(Lio/sentry/s5;Lio/sentry/w0;Lio/sentry/u0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISentryClient is required."

    .line 2
    invoke-static {p2, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/w0;

    iput-object p2, p0, Lio/sentry/r6$a;->b:Lio/sentry/w0;

    const-string p2, "Scope is required."

    .line 3
    invoke-static {p3, p2}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/u0;

    iput-object p2, p0, Lio/sentry/r6$a;->c:Lio/sentry/u0;

    const-string p2, "Options is required"

    .line 4
    invoke-static {p1, p2}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/s5;

    iput-object p1, p0, Lio/sentry/r6$a;->a:Lio/sentry/s5;

    return-void
.end method


# virtual methods
.method public a()Lio/sentry/w0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/r6$a;->b:Lio/sentry/w0;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lio/sentry/s5;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/r6$a;->a:Lio/sentry/s5;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lio/sentry/u0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/r6$a;->c:Lio/sentry/u0;

    .line 2
    .line 3
    return-object v0
.end method
