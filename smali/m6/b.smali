.class public Lm6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lm6/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm6/t;

    invoke-direct {v0}, Lm6/t;-><init>()V

    iput-object v0, p0, Lm6/b;->a:Lm6/t;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm6/b;->a:Lm6/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm6/t;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Lm6/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lm6/b;->a:Lm6/t;

    return-object v0
.end method
