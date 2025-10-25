.class public final Lio/sentry/c3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/sentry/y6;


# direct methods
.method public constructor <init>(Lio/sentry/y6;Lio/sentry/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string p2, "transactionContexts is required"

    .line 5
    .line 6
    invoke-static {p1, p2}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lio/sentry/y6;

    .line 11
    .line 12
    iput-object p1, p0, Lio/sentry/c3;->a:Lio/sentry/y6;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a()Lio/sentry/y6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/c3;->a:Lio/sentry/y6;

    .line 2
    .line 3
    return-object v0
.end method
