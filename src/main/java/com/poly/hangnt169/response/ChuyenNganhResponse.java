package com.poly.hangnt169.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

/**
 * @author hangnt169
 */

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ChuyenNganhResponse {

    private UUID id;

    private String tenChuyenNganh;

}
