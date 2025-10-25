.class final Lm5/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lm5/i0;


# direct methods
.method constructor <init>(Lm5/i0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm5/f0;->b:Lm5/i0;

    iput p2, p0, Lm5/f0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm5/f0;->b:Lm5/i0;

    .line 2
    .line 3
    iget v1, p0, Lm5/f0;->a:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lm5/i0;->A(Lm5/i0;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
