.class public final synthetic Lm5/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lm5/j;

.field public final synthetic b:Lm5/j$b;


# direct methods
.method public synthetic constructor <init>(Lm5/j;Lm5/j$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/r0;->a:Lm5/j;

    iput-object p2, p0, Lm5/r0;->b:Lm5/j$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm5/r0;->a:Lm5/j;

    .line 2
    .line 3
    iget-object v1, p0, Lm5/r0;->b:Lm5/j$b;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lm5/j;->d(Lm5/j$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
