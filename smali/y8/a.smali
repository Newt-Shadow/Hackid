.class public final synthetic Ly8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7/g;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lk7/c;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lk7/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly8/a;->a:Ljava/lang/String;

    iput-object p2, p0, Ly8/a;->b:Lk7/c;

    return-void
.end method


# virtual methods
.method public final a(Lk7/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ly8/a;->a:Ljava/lang/String;

    iget-object v1, p0, Ly8/a;->b:Lk7/c;

    invoke-static {v0, v1, p1}, Ly8/b;->b(Ljava/lang/String;Lk7/c;Lk7/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
