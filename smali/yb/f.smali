.class public final Lyb/f;
.super Lzb/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lyb/g;


# direct methods
.method constructor <init>(Lyb/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyb/f;->a:Lyb/g;

    .line 2
    .line 3
    invoke-direct {p0}, Lzb/f;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lyb/f;->a:Lyb/g;

    .line 2
    .line 3
    invoke-static {v0}, Lyb/g;->a(Lyb/g;)Lcom/android/billingclient/api/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/billingclient/api/d;->d()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
