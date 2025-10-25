.class public final synthetic Lk5/t;
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

    iput-object p1, p0, Lk5/t;->a:Lk5/x;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk5/t;->a:Lk5/x;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, "Service disconnected"

    .line 5
    .line 6
    invoke-virtual {v0, v1, v2}, Lk5/x;->a(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
