﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveMent : MonoBehaviour
{
    [SerializeField] private float speed;
    private Rigidbody2D body;
    public Animator anim;
    private void Awake()
    {
        body = GetComponent<Rigidbody2D>();
    }
    private void Update()
    {
        body.velocity = new Vector2(Input.GetAxis("Horizontal") * speed, body.velocity.y);

        if (Input.GetKey(KeyCode.Space))
        {
            body.velocity = new Vector2(body.velocity.x, speed);
        }
       
    }
}
