.class public Lof/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpf/b;


# instance fields
.field private final a:Lof/n;

.field private final b:Lmf/b;

.field private final c:Lpf/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lof/n;

    .line 5
    .line 6
    invoke-direct {v0}, Lof/n;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lof/o;->a:Lof/n;

    .line 10
    .line 11
    new-instance v0, Lof/c;

    .line 12
    .line 13
    invoke-direct {v0}, Lof/c;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lof/o;->b:Lmf/b;

    .line 17
    .line 18
    new-instance v0, Lof/b;

    .line 19
    .line 20
    invoke-direct {v0}, Lof/b;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lof/o;->c:Lpf/a;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public a()Lpf/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lof/o;->c:Lpf/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lmf/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lof/o;->a:Lof/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public d()Lof/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lof/o;->a:Lof/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public initialize()V
    .locals 0

    .line 1
    return-void
.end method
