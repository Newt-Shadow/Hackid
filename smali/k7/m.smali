.class public final synthetic Lk7/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lk7/x;

.field public final synthetic b:Lk8/b;


# direct methods
.method public synthetic constructor <init>(Lk7/x;Lk8/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk7/m;->a:Lk7/x;

    iput-object p2, p0, Lk7/m;->b:Lk8/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk7/m;->a:Lk7/x;

    iget-object v1, p0, Lk7/m;->b:Lk8/b;

    invoke-static {v0, v1}, Lk7/n;->j(Lk7/x;Lk8/b;)V

    return-void
.end method
