.class public final Lu8/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu8/w0;


# static fields
.field public static final a:Lu8/x0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu8/x0;

    invoke-direct {v0}, Lu8/x0;-><init>()V

    sput-object v0, Lu8/x0;->a:Lu8/x0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu8/v0;
    .locals 3

    .line 1
    new-instance v0, Lu8/v0;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-direct {v0, v1, v2}, Lu8/v0;-><init>(J)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
