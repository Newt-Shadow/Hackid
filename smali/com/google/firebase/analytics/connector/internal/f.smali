.class public final Lcom/google/firebase/analytics/connector/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Li7/a$b;

.field private final b:Lh6/a;

.field private final c:Lcom/google/firebase/analytics/connector/internal/e;


# direct methods
.method public constructor <init>(Lh6/a;Li7/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/firebase/analytics/connector/internal/f;->a:Li7/a$b;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/f;->b:Lh6/a;

    .line 7
    .line 8
    new-instance p2, Lcom/google/firebase/analytics/connector/internal/e;

    .line 9
    .line 10
    invoke-direct {p2, p0}, Lcom/google/firebase/analytics/connector/internal/e;-><init>(Lcom/google/firebase/analytics/connector/internal/f;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/firebase/analytics/connector/internal/f;->c:Lcom/google/firebase/analytics/connector/internal/e;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lh6/a;->b(Lh6/a$a;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method final synthetic a()Li7/a$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/analytics/connector/internal/f;->a:Li7/a$b;

    return-object v0
.end method
