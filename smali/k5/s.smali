.class public final synthetic Lk5/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lk5/x;


# direct methods
.method public synthetic constructor <init>(Lk5/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk5/s;->a:Lk5/x;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk5/s;->a:Lk5/x;

    invoke-virtual {v0}, Lk5/x;->d()V

    return-void
.end method
