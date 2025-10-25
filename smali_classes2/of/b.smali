.class public Lof/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpf/a;


# instance fields
.field private final a:Lof/p;

.field private final b:Ljava/lang/InheritableThreadLocal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lof/p;

    .line 5
    .line 6
    invoke-direct {v0}, Lof/p;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lof/b;->a:Lof/p;

    .line 10
    .line 11
    new-instance v0, Lof/b$a;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lof/b$a;-><init>(Lof/b;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lof/b;->b:Ljava/lang/InheritableThreadLocal;

    .line 17
    .line 18
    return-void
.end method
