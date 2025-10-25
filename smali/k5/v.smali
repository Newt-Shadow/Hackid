.class public final synthetic Lk5/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lk5/x;

.field public final synthetic b:Lk5/a0;


# direct methods
.method public synthetic constructor <init>(Lk5/x;Lk5/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk5/v;->a:Lk5/x;

    iput-object p2, p0, Lk5/v;->b:Lk5/a0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk5/v;->a:Lk5/x;

    .line 2
    .line 3
    iget-object v1, p0, Lk5/v;->b:Lk5/a0;

    .line 4
    .line 5
    iget v1, v1, Lk5/a0;->a:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lk5/x;->e(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
